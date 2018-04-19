require 'carrierwave/orm/activerecord'

class Article < ApplicationRecord
    # validates :title, presence: true
    # validates :description, presence: true
    # validates :image, presence: true
    # validates :body, presence: true

    mount_uploader :image, AvatarUploader
end
