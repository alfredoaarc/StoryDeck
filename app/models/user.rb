class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :messages, dependent: :destroy
  has_many :chatrooms, through: :messages
  has_one :creator, dependent: :destroy

  has_many :businesses, dependent: :destroy

  def business_owner?
    self.business_owner
  end

  def business_stories
    if self.business_owner == true
      stories = []
      self.businesses.each do |business|
        business.stories.each do |story|
          stories << story
        end
      end
      return stories
    end
  end
end
