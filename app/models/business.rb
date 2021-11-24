class Business < ApplicationRecord
  belongs_to :user
  has_many :stories, dependent: :destroy
  has_many :content_creator_business_connections, dependent: :destroy
  has_one_attached :logo, dependent: :destroy
  validates :name, :description, :website, presence: true
end
