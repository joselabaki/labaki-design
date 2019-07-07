class Project < ApplicationRecord
  mount_uploaders :images, ImageUploader
  mount_uploaders :thumbnails, ThumbnailUploader


  extend FriendlyId
  friendly_id :title, use: [:slugged]

  translates :title , :body , :description , :subcategory

end
