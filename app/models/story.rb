class Story < ApplicationRecord
  belongs_to :business
  has_many :campaigns
  has_many_attached :photos, dependent: :destroy
  has_many :users, through: :business
  has_many :story_categories
  has_many :categories, through: :story_categories

  validates :title, :description, presence: true
  validates :photos, presence: true
  # validates :published, presence: true # :default false
end
