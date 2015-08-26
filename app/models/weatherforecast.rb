class Weatherforecast < ActiveRecord::Base
  validates :office_id, presence: true
  validates :temp, presence: true
  validates :date, presence: true
  validates :sunlight, length: {maximum: 15}
end
