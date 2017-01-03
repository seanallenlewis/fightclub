class Challenge < ActiveRecord::Base
  belongs_to :fighter, foreign_key: :fighter_id
  # belongs_to :challengee

  # after_create do |p|
  #   if !Challenge.find(:first, :conditions => { :challengee_id => p.fighter_id })
  #     Challenge.create!(:fighter_id => p.challengee_id, :challengee_id => p.fighter_id)
  #   end
  # end
  # after_destroy do |p|
  #   reciprocal = Challenge.find(:first, :conditions => { :challengee_id => p.fighter_id })
  #   reciprocal.destroy unless reciprocal.nil?
  # end
end
