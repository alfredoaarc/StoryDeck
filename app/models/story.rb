class Story < ApplicationRecord
  belongs_to :business
  belongs_to :campaign
  validates :title, :description, :category, presence: true
  validates :published, presence: true # :default false
end
