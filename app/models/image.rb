class Image < ActiveRecord::Base
  belongs_to :image_gallery
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :image_gallery, presence: true

  attachment :image

  acts_as_taggable # Alias for acts_as_taggable_on :tags

end
