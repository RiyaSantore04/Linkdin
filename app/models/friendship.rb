# frozen_string_literal: true

class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'
  scope :xyz, -> { where(isfriend: false) }

  # def self.abc
  #   where(isfriend: false)
  # end
end
