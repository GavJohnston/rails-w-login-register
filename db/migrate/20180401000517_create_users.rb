class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.text :address
      t.text :phone_number
      t.date :date_of_birth

      t.timestamps null: false
    end
  end
end
