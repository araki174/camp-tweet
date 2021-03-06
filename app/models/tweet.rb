class Tweet < ApplicationRecord
  validates :text, presence: true

  belongs_to :user
  has_many :comments
  # has_one_attached :image

  mount_uploader :image, ImageUploader

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :rank
  belongs_to_active_hash :prefecture

  def self.search(search)
    if search != ""
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
end
