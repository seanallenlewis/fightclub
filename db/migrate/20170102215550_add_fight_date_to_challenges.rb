class AddFightDateToChallenges < ActiveRecord::Migration
  def change
    add_column :challenges, :fight_date, :date
  end
end
