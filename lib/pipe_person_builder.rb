require 'helper.rb'

class PipePersonBuilder < PersonBuilder
	def self.build(persons)
		arr = persons.split(' | ')
		Person.new(
			firstname: arr[1],
			lastname: arr[0],
			gender: format_gender(arr[3]),
			birthdate: format_date(arr[5]),
			color: arr[4]
			)
	end
end