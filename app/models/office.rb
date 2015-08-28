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
    location = Geocoder.search(self.address)
    [location[0].latitude, location[0].longitude]
  end
 
end
