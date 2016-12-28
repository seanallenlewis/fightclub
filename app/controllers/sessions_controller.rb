class SessionsController < ApplicationController
  def new
    end

    def create
      @fighter = Fighter.find_by_email(params[:email])
      if @fighter and @fighter.authenticate(params[:password])
        session[:fighter_id] = @fighter.id
        redirect_to fighter_path(@fighter)
      else
        redirect_to new_session_path
      end
    end

    def destroy
      session[:fighter_id] = nil
      redirect_to root_path
    end
  end
