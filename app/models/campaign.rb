class Campaign < ApplicationRecord
  belongs_to :story
  belongs_to :user
  has_many :chatrooms
end
