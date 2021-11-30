class Category < ApplicationRecord
  has_many :creator_categories, dependent: :destroy
  has_many :creators, through: :creator_categories

  has_many :story_categories, dependent: :destroy
  has_many :stories, through: :story_categories

end
