class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :location
      t.string :body
      t.belongs_to :fighter, index: true, foreign_key: true
      t.belongs_to :challengee, index: true
      t.boolean :accepted

      t.timestamps null: false
    end
  end
end
