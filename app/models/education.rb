# frozen_string_literal: true

class Education < ApplicationRecord
  belongs_to :user
  validates :collage, :course, :field_of_study, presence: true
end
