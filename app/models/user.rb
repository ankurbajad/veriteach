class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable

  # has_many :districts #, :dependent => :destroy

  # accepts_nested_attributes_for :districts #, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  # #accepted_nested_attributes :districts

  # include MultiStepModel

  # def self.total_steps
  #   3
  # end

  SELECT_STATE_OPTION = {
    "ALABAMA"         => "alabama",
    "ALASKA"          => "alaska",
    "ARKANSAS"        => "arkansas",
    "CALIFORNIA"      => "california",
    "COLORADO"        => "colorado",
    "CONNECTICUT"     => "connecticut",
    "DELAWARE"        => "delaware",
    "FLORIDA"         => "florida",
    "GEORGIA"         => "georgia",
    "HAWAII"          => "hawaii",
    "IDAHO"           => "idaho",
    "ILLINOIS"        => "illinois",
    "INDIANA"         => "indiana",
    "IOWA"            => "iowa",
    "KANSAS"          => "kansas",
    "KENTUCKY"        => "kentucky",
    "LOUISIANA"       => "louisiana",
    "MAINE"           => "maine",
    "MARYLAND"        => "maryland",
    "MASSACHUSETTS"   => "massachusetts",
    "MICHIGAN"        => "michigan",
    "MINNESOTA"       => "minnesota",
    "MISSISSIPPI"     => "mississippi",
    "MISSOURI"        => "missouri",
    "MONTANA"         => "montana",
    "NEBRASKA"        => "nebraska",
    "NEVADA"          => "nevada",
    "NEW HAMPSHIRE"   => "new hampshire",
    "NEW JERSEY"      => "new jersey",
    "NEW MEXICO"      => "new mexico",
    "NEW YORK"        => "new york",
    "NORTH CAROLINA"  => "north carolina",
    "NORTH DAKOTA"    => "north dakota",
    "OHIO"            => "ohio",
    "OKLAHOMA"        => "oklahoma",
    "OREGON"          => "oregon",
    "PENNSYLVANIA"    => "pennsylvania",
    "RHODE ISLAND"    => "rhode island",
    "SOUTH CAROLINA"  => "south carolina",
    "SOUTH DAKOTA"    => "south dakota",
    "TENNESSEE"       => "tennessee",
    "TEXAS"           => "texas",
    "UTAH"            => "utah",
    "VERMONT"         => "vermont",
    "VIRGINIA"        => "virginia",
    "WASHINGTON"      => "washimhton",
    "WEST VIRGINIA"   => "west virginia",
    "WISCONSIN"       => "wisconsin",
    "WYOMING"         => "wyoming"
  }

  SELECT_CITY_OPTION = {

  }
end
