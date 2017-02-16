class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :items, dependent: :destroy

  has_many :attendances
  has_many :sellers
  has_many :events, through: :attendances
  has_many :events, through: :sellers

end
