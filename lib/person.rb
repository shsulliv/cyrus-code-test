require 'date'

class Person
	attr_reader :firstname,:lastname, :gender, :birthdate, :color

	def initialize(firstname:, lastname:, gender:, birthdate:, color:)
		@firstname = firstname
		@lastname = lastname
		@gender = gender
		@birthdate = birthdate
		@color = color
	end

	def to_s
		"#{lastname} #{firstname} #{gender} #{birthdate.strftime("%-m/%-d/%Y")} #{color}"
	end
end



