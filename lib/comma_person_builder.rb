require 'date'
require_relative './person.rb'
require_relative './person_builder.rb'

class CommaPersonBuilder < PersonBuilder
	def self.build(persons)
		arr = persons.split(', ')
		Person.new(
			firstname: arr[1],
			lastname: arr[0],
			gender: format_gender(arr[2]),
			birthdate: format_date(arr[4]),
			color: arr[3]
		)
	end
end