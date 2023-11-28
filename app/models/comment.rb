class Comment < ApplicationRecord
	has_many :reviews, dependent: :destroy
	belongs_to :article
	accepts_nested_attributes_for :reviews, allow_destroy: true
	before_save :add_code
	validates :code, uniqueness: { scope: [:article], :case_sensitive => false, message: "Speaker Code has to be unique in the event" }


	def add_code
		self.code = code.to_s.downcase if code.present?
	end
end
