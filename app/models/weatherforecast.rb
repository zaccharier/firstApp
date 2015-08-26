class Weatherforecast < ActiveRecord::Base
  validate :validate_office_id
  validates :office_id, presence: true, numericality: { only_integer: true}, unless: -> { errors.include?(:office_id) }
  validates :temp, presence: true
  validates :date, presence: true
  validates :sunlight, length: {maximum: 15}
  
private

  def validate_office_id
    errors.add(:office_id, "is invalid") unless Office.exists?(self.office_id)
  end
end
