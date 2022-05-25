# frozen_string_literal: true

class Post < ApplicationRecord
  paginates_per 3
  belongs_to :User
  has_many :comments, as: :commentable
  has_one_attached :image, dependent: :destroy
  has_many :likes, as: :likeable
  validates :image, presence: true
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 5 }
end
