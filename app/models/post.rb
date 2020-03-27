class Post < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :thumbnail, ThumbnailUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 250 }
  validate  :thumbnail_size
  
  private
    
    def thumbnail_size
      if thumbnail.size > 5.megabytes
        errors.add(:thumbnail, "5MB以下にしてください")
      end
    end
end