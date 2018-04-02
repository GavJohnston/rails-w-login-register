class CreateExtras < ActiveRecord::Migration[5.1]
  def change
    create_table :extras do |t|
      t.string :issue
      t.date :current_date
      t.text :resolution
      t.date :next_appointment
      t.references :user, index: true

      t.timestamps null: false
    end
  add_foreign_key :extras, :users
  end
end