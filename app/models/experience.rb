# frozen_string_literal: true

class Experience < ApplicationRecord
  belongs_to :user
  validates :designation, :company_name, :location, :probation_period, presence: true
end
