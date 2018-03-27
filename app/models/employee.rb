class Employee < ApplicationRecord
  has_many :companies

  accepts_nested_attributes_for :companies

  include MultiStepModel

  def self.total_steps
    3
  end
end
