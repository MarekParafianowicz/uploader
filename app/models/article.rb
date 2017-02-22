class Article < ActiveRecord::Base
  validates :name, :paper, :file, presence: true
end
