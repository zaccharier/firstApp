class CreateWeatherforecasts < ActiveRecord::Migration
  def change
    create_table :weatherforecasts do |t|
      t.integer :office_id
      t.integer :temperature
      t.integer :humidity_level
      t.string :sunlight
      t.date :date

      t.timestamps null: false
    end
  end
end
