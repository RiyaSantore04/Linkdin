# frozen_string_literal: true

class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'
  belongs_to :requester, class_name: 'User'
  default_scope { where(isfriend: true) }
end
