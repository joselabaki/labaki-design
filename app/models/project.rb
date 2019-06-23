class Project < ApplicationRecord
  mount_uploaders :images, ImageUploader

end
