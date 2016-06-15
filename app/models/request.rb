class Request < ActiveRecord::Base
  belongs_to :goal
  belongs_to :user
  belongs_to :status

end