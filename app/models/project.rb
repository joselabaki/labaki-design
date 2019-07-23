class Project < ApplicationRecord
  mount_uploaders :images, ImageUploader
  mount_uploaders :thumbnails, ThumbnailUploader


  extend FriendlyId
  friendly_id :title, use: [:slugged]

  translates :title , :body , :description , :subcategory




      def next
        Project.where("id < ?", id).limit(1).first
      end

      def previous
        Project.where("id > ?", id).limit(1).first
      end




end
