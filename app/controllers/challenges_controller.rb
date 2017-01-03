class ChallengesController < ApplicationController
  def show
    @challenge = Challenge.find(params[:id])
  end

  def new
    @challenge = Challenge.new

    @challengee = Fighter.find(params[:challenged])
  end

  def create
    @challenge = Challenge.new(challenge_params)
    @challenge.fighter = current_fighter
    if @challenge.save
      redirect_to fighter_path(@challenge.challengee_id)
    else
      render :new
    end

  end

  def destroy
    Challenge.find(params[:id]).destroy
    flash[:success] = "Challenge Deleted"
    redirect_to fighter_path
  end

  def challenge_params
    params.require(:challenge).permit(:fighter, :challengee_id, :body, :date, :location)
  end
end
