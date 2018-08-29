class Blog < ApplicationRecord
	
	enum status: { draft: 0, published: 1}
	extend FriendlyId
  	friendly_id :title, use: :slugged

#does not validate unless has title or body
  	validates_presence_of :title, :body

  	belongs_to :topic
end
