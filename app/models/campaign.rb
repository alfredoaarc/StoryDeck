class Campaign < ApplicationRecord
  belongs_to :story
  belongs_to :creator
  has_many :chatrooms
end
