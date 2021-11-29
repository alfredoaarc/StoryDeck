class Creator < ApplicationRecord
  belongs_to :user
  has_many :creator_categorie, dependent: :destroy
  has_many :campaign, dependent: :destroy
  has_one_attached :logo, dependent: :destroy
  validates :stage_name, :description, :website, presence: true
  # why not validate user_id

end
