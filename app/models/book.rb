class Book < ActiveRecord::Base
	def self.lastest
		order(created_at: :desc)
	end
	def update_rating 
		self.n_votes += 1
		self.rating / self.n_votes
	end
end
