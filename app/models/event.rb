class Event < ApplicationRecord
  belongs_to :user
  has_many :attendances
  has_many :sellers
  has_many :users, through: :attendances
  has_many :users, through: :sellers
end
