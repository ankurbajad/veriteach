class District < ApplicationRecord
  # belongs_to :user
  belongs_to :candidate, optional: true
  has_one :district_employee
  has_one :district_review
  has_one :district_insurance
  has_many :district_employments

  accepts_nested_attributes_for :district_employments
end
