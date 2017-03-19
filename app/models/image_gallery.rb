class ImageGallery < ActiveRecord::Base
  attachment :image, type: :image

  validates_presence_of :title

  has_many :images, dependent: :destroy
  belongs_to :user
  
  accepts_attachments_for :images
end
