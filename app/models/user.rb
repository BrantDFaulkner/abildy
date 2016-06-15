class User < ActiveRecord::Base
  has_secure_password
  has_many :goals, foreign_key: :admin_id
end