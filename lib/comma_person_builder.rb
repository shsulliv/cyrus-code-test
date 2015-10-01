require 'helper'

class CommaPersonBuilder < PersonBuilder
	def initialize
		super ', ', '/'
	end

	def build(person)
		arr = person_array(person)

		Person.new(
			firstname: arr[1],
			lastname: arr[0],
			gender: format_gender(arr[2]),
			birthdate: format_date(arr[4]),
			color: arr[3]
		)
	end
end