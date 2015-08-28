class CreateWeatherforecasts < ActiveRecord::Migration
  def change
    create_table :weatherforecasts do |t|
      t.date :date
      t.string :sunlight
      t.integer :temperature
      t.references :office, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
