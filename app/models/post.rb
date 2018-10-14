class Post < ActiveRecord::Base
  belongs_to :list
  has_many :comments
end
