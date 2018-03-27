module ApplicationHelper
  def build_user(user)
    user.districts.build if user.districts.empty?
    user
  end
end
