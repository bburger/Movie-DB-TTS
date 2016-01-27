class Genre < ActiveRecord::Base
	has_many :actors
	has_many :movies

	validates :name, length: {minimum: 3}
	validates :name, uniqueness: { case_sensitive: false }
end
