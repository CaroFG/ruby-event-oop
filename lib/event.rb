class Event
	attr_accessor :start_date, :duration, :title, :attendies 

	
	def initialize(start_date, duration, title, attendees)
		@start_date = Time.parse("#{start_date}")
		@duration = duration.to_i
		@title = title
		@attendees = Array.new << attendees
	end

	def postpone_24h
		@start_date + 86400
	end

	def end_date
		@start_date + duration * 60
	end

	def is_past?
		@start_date < Time.now
	end

	def is_future?
		@start_date > Time.now
	end

	def is_soon?
		if (Time.now < @start_date) && (@start_date < Time.now + 1800) 
			return true
		else return false
		end
	end
	
	def to_s
		puts "> Titre : #{@title}"
		puts "> Date de début : #{@start_date}"
		puts "> Durée #{@duration} minutes"
		puts "> Invités : #{@attendees.join(", ")}"
	end
end