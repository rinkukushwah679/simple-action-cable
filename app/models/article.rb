class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	accepts_nested_attributes_for :comments, allow_destroy: true
	has_one_attached :featured_image
end
