class Article < ActiveRecord::Base
  validates :name, :paper, :file, presence: true
  mount_uploader :file, FileUploader
end
