class Creator < ApplicationRecord
  belongs_to :user
  has_many :creator_categories, dependent: :destroy
  has_many :categories, through: :creator_categories
  has_many :campaign, dependent: :destroy
  has_many_attached :photos, dependent: :destroy
  validates :stage_name, :description, :website, presence: true
  # why not validate user_id

end
