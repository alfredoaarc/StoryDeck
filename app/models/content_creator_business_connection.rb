class ContentCreatorBusinessConnection < ApplicationRecord
  belongs_to :business
  belongs_to :user
  validates :status, presence: true
end
