class Project < ApplicationRecord
  mount_uploaders :images, ImageUploader

  extend FriendlyId
  friendly_id :title, use: [:slugged]


end
