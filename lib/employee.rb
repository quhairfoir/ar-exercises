class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, :last_name, presence: true

  # validate :hourly_rate_valid

  # def employee_has_first_name
  #   if !first_name.present?
  #     errors.add(:first_name, "must be given")
  #   end
  # end

  # def employee_has_last_name
  #   if !last_name.present?
  #     errors.add(:last_name, "must be given")
  #   end
  # end

  # def hourly_rate_valid
  #   if hourly_rate.present? && hourly_rate.between?(40,200)
  #     errors.add(:hourly_rate, "must be between 40 and 200")
  #   end
  # end
end
