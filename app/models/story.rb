class Story < ApplicationRecord
  belongs_to :business

  has_many :campaigns, dependent: :destroy
  has_many_attached :photos, dependent: :destroy

  has_many :story_categories, dependent: :destroy
  has_many :categories, through: :story_categories

  validates :title, :description, presence: true
end
#location MIGRATION
