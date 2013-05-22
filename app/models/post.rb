class Post < ActiveRecord::Base
  validates :title, :presence => true, :uniqueness =>true
  validates :content, :presence =>true
  has_many :comments
  attr_accessible :content, :title
end
