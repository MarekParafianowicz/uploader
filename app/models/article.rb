class Article < ActiveRecord::Base
  validates :name, presence: true
  mount_uploader :file, FileUploader

  def content
    paper.blank? ? "No content provided" : paper
  end

  def picture
    file.blank? ? "No picture provided" : ActionController::Base.helpers.image_tag(self.file.thumb.url.to_s)
  end
end
