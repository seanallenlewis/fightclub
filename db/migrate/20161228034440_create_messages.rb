class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :challenger
      t.string :time
      t.string :date
      t.string :location
      t.text :body
      t.boolean :accepted

      t.timestamps null: false
    end
  end
end
