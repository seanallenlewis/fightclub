class FightersController < ApplicationController

  before_action :authorize, only: [:show]

  def index
    @fighters = Fighter.all
  end

  def show
    @fighter = Fighter.find(params[:id])
    @date = @fighter.created_at
  end

  def new
    @fighter = Fighter.new
  end

  def create
    @fighter = Fighter.new(fighter_params)
    if @fighter.save
      redirect_to fighter_path(@fighter)
    else
      redirect_to new_fighters_path
    end
  end

  def edit
    @fighter = Fighter.find(params[:id])
  end

  def update
    @fighter = Fighter.find(params[:id])
    if @fighter.update_attributes(fighter_params) and redirect_to fighter_path(@fighter)
    else
      redirect_to edit_fighter_path
    end
  end

  def destroy
    Fighter.find(params[:id]).destroy
    flash[:success] = "Profile Deleted"
    redirect_to fighters_path
  end

  def fighter_params
    params.require(:fighter).permit(:name, :email, :password, :age, :weight, :style, :location, :likes1, :likes2, :likes3, :like4, :likes5, :likes6, :likes7, :likes8, :like9, :like10, :hates1, :hates2, :hates3, :hates4, :hates5, :hates6, :hates7, :hates8, :hates9, :hates10, :password_confirmation )
  end
end
