# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  # has_many    :commentable, as: :commentable
  has_many :likes, as: :likeable, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  # has_many    :replies, class_name: 'Comment', foreign_key: :parent_id, dependent: :destroy
  validates :commenter, presence: true
end
