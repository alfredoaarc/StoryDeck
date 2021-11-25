class Story < ApplicationRecord
  belongs_to :business
  has_many :campaign
  has_one_attached :photos, dependent: :destroy
  has_many :story_categories

  has_many :categories, through: :story_categories

  validates :title, presence: true
  validates :description, presence: true
  validates :published, presence: true # :default false
end
