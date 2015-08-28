class Office < ActiveRecord::Base
  has_many :weatherforecasts
  
  validates :name, presence: true
  validates :address, presence: true
 # validates :number_of_employees, :inclusion => 0..1000000 , unless: !(:number_of_employees?)

  
  def temperature
    today_date=Date.today
    today_temperature=self.weatherforecasts.find_by(date: today_date).temperature
    today_temperature
  end
  
  def location
    [51.52238797921441, -0.08366235665359283]
  end
 
end
