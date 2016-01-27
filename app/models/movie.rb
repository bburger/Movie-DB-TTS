class Movie < ActiveRecord::Base
	belongs_to :actor
	belongs_to :genre

	validates :name, uniqueness: {case_sensitive: false}
	validates :name, :description, :rating, :stars, :poster, presence: true
	
	end
