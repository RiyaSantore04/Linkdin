# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # validates :login, :email, presence: true
  # before_validation :ensure_login_has_a_value
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # has_one_attached :image, dependent: :destroy
  has_many :post
  has_many :comments, as: :commentable
  has_many :likes, as: :likeable, dependent: :destroy
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships
  has_many :educations
  has_many :skills
  has_many :experiences
  validates :user_name, :student_at, :contact, presence: true
  scope :all_except, ->(user) { where.not(id: user) }
  accepts_nested_attributes_for :educations, :skills, :experiences
end
