class Business < ApplicationRecord
  belongs_to :user
  has_many :stories, dependent: :destroy
  has_one_attached :logo, dependent: :destroy
  validates :name, :description, :website, presence: true
end
