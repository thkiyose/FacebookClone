class Blog < ApplicationRecord
  belongs_to :user
  validates :content, length: { maximum: 200 }
end
