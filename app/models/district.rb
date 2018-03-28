class District < ApplicationRecord
  # belongs_to :user
  belongs_to :candidate
  has_one :district_employee
  has_one :district_review
  has_one :district_insurance
  has_many :district_employments
end
