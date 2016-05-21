class Article < ActiveRecord::Base
  validates :name, presence: true
  validates :paper, presence: true
  validates :file, presence: true
end
