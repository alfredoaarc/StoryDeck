class Story < ApplicationRecord
  belongs_to :business
  belongs_to :campaign
  has_one_attached :photos, dependent: :destroy
  has_many :story_categories

  has_many :categories, through: :story_categories

  validates :title, :description, :category, presence: true
  validates :published, presence: true # :default false
end
