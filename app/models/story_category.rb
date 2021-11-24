class StoryCategory < ApplicationRecord
  belongs_to :story
  belongs_to :category
  has_many :stories
end
