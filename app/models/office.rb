class Office < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true
  validates :number_of_employees, :inclusion => 0..infinity
end
