class Article < ActiveRecord::Base
  validates :name, presence: true
  mount_uploader :file, FileUploader
end
