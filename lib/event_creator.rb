class EventCreator
	attr_accessor :title_event, :start_date, :duration, :emails_array

	def get_title
		puts "Salut, tu veux créer un événement ? Cool !"
		puts "Commençons. Quel est le nom de l'événement ?"
		print ">"
		@title_event = gets.chomp.downcase
	end

	def get_event_start
		puts "Super. Quand aura-t-il lieu ?"
		print ">"
		@start_date = gets.chomp
	end

	def get_duration
		puts "Au top. Combien de temps en minutes va-t-il durer (en minutes) ?"
		print ">"
		@duration = gets.chomp
	end

	def get_emails
		puts "Génial. Qui va participer ? Balance leurs e-mails"
		print ">"
		emails = gets.chomp
		emails_spaces = emails.gsub(";", "")
		@emails_array = emails_spaces.split(" ")
	end


	def initialize
		get_title
		get_event_start
		get_duration
		get_emails
		new_event = Event.new(@start_date, @duration, @title_event, @emails_array)
		puts "Super, c'est noté, ton évènement \" #{@title_event} \" a été créé !"
		puts new_event.to_s
	end

end
