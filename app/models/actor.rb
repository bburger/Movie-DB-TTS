class Actor < ActiveRecord::Base
	belongs_to :genre
	has_many :movies

	validates :name, uniqueness: { case_sensitive: false }
	validates :name, presence: true

	validates :bio, length: { in: 30..500 }
	validates :bio, format: { with: /\A[a-z .?!',A-Z]+\z/}
end
