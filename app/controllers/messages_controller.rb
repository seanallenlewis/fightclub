class MessagesController < ApplicationController
  def index
    if not current_fighter
      redirect_to new_session_path
    end
    @message = Message.new
  end

  def show
  end

  def new
    @message = Message.new
  end

  def edit
  end

  def create
      if not current_fighter
      redirect_to new_session_path
    end
    @message = Message.new(message_params)
    # @message.fighter = current_fighter
    if @message.save
      redirect_to fighter_path current_fighter
    else
      render :new #go to "new" path
    end
  end

  def update
  end

  def destroy
  end

  private
  def message_params
    params.require(:message).permit(:challenger, :body, :time, :date, :location)
  end
end
