class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :company_name
      t.string :image
      t.text :what
      t.text :glad
      t.text :please
      t.string :age
      t.text :human
      t.text :work
      t.date :day
      t.text :memo
      t.text :present
      t.text :address
      t.string :email
      t.integer :telephone
      t.date :dayend
      t.string :ocuppations
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
