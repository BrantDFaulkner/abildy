class User < ActiveRecord::Base
  has_secure_password
  has_many :goals, foreign_key: :admin_id
  has_many :requests
  has_many :participations
end