class Goal < ActiveRecord::Base
  belongs_to :admin, class_name: "User"
  belongs_to :category
  has_many :requests
  has_many :participations
  has_many :users, through: :participations
end