class ChallengesController < ApplicationController
  def show
  end

  def new
    @challenge = Challenge.new
  end

  def create
  end

  def destroy
  end

  def challenge_params
    params.require(:challenge).permit(:fighter, :challengee, :body, :date, :location)
  end
end
