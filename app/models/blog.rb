class Blog < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :content, length: { maximum: 200 },
            presence: true
end
