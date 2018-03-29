module DistrictsHelper
  def build_district(district)
    district.district_employments.build if district.district_employments.empty?
    district
  end
end