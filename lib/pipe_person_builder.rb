require 'helper'

class PipePersonBuilder < PersonBuilder
	def initialize
		super ' | ', '-'
	end

	def build(person)
		arr = person_array(person)

		Person.new(
			firstname: arr[1],
			lastname: arr[0],
			gender: format_gender(arr[3]),
			birthdate: format_date(arr[5]),
			color: arr[4]
			)
	end
end