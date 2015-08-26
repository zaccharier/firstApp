class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.string :contact
      t.string :address
      t.integer :number_of_employees

      t.timestamps null: false
    end
  end
end
