class DistrictReview < ApplicationRecord
	belongs_to :district
	has_many :district_review_performances
end
