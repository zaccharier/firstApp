class Office < ActiveRecord::Base
  has_many :weatherforecasts
  
  validates :name, presence: true
  validates :address, presence: true
 # validates :number_of_employees, :inclusion => 0..1000000 , unless: !(:number_of_employees?)
  def sunlight
    "rainy"
  end
  
  def temperature
    23
  end
 
end
