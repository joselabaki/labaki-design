class Project < ApplicationRecord
  mount_uploaders :images, ImageUploader

  extend FriendlyId
  friendly_id :title, use: [:slugged]

  translates :title , :body , :description

end
