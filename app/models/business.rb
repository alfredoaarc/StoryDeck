class Business < ApplicationRecord
  belongs_to :user
  has_many :stories, dependent: :destroy
  has_many :content_creator_business_connections, dependent: :destroy #Mo comments: this may be useless now that Alfredo got rid of the corresponding table in the DB
  has_one_attached :logo, dependent: :destroy
  validates :name, :description, :website, presence: true
end
