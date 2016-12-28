class CreateFighters < ActiveRecord::Migration
  def change
    create_table :fighters do |t|
      t.string :name
      t.string :email
      t.integer :weight
      t.integer :age
      t.string :style
      t.string :location
      t.integer :wins
      t.integer :losses
      t.string :likes1
      t.string :likes2
      t.string :likes3
      t.string :likes4
      t.string :likes5
      t.string :likes6
      t.string :likes7
      t.string :likes8
      t.string :likes9
      t.string :likes10
      t.string :hates1
      t.string :hates2
      t.string :hates3
      t.string :hates4
      t.string :hates5
      t.string :hates6
      t.string :hates7
      t.string :hates8
      t.string :hates9
      t.string :hates10
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
