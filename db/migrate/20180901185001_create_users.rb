class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.text :name
      t.text :lastname
      t.date :birthday
      t.text :gender
      t.text :country
      t.text :city

      t.timestamps
    end
  end
end
