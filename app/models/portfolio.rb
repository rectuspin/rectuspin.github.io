class Portfolio < ApplicationRecord
	has_many :technologies									
	accepts_nested_attributes_for :technologies,	#lambda== -> 
														reject_if: lambda {|attrs| attrs['name'].blank?}
	include Placeholder
	validates_presence_of :title, :body, :main_image, :thumb_image

	  	#cutom scopes
	def self.differenthi
		where(subtitle: 'different hi')
	end

	scope :hi, -> {where(subtitle: 'hi')}

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
		self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
	end
# if self.main_image==nil
# 	self.main_image="http://placehold.it/600x400"
# end
end
