# frozen_string_literal: true

class Like < ApplicationRecord
  # before_create_action
  belongs_to :likeable, polymorphic: true
end
