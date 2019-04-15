require 'pry'

class User
	attr_accessor :email, :age

	@@all_users = Array.new 
	

	def initialize(email_to_save, age_to_save)
		@email = email_to_save 
		@age = age_to_save 
		@@all_users << self
	end

	def self.all
		return @@all_users
	end

	def self.find_by_email(email_string)
		@@all_users.each do |user|
			if user.email == email_string
			return puts "Voici l'âge du User trouvé : #{user.age}"
			end
		end
	end
end

