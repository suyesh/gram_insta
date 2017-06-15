class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one :upload, dependent: :destroy
end
