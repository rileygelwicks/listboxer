class Post < ActiveRecord::Base
  belongs_to :lists
  has_many :comments
end
