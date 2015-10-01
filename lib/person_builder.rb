require 'helper'

class PersonBuilder
	def initialize(person_separator, date_separator)
		@person_separator = person_separator
		@date_separator = date_separator
	end

	protected

	def person_array(person_string)
		person_string.split @person_separator
	end

	def format_gender(gender)
		case gender
		when 'M' then 'Male'
		when 'F' then 'Female'
		else gender
		end
	end

	def format_date(date)
		date_array = date.split @date_separator
		Date.new(date_array[2].to_i, date_array[0].to_i, date_array[1].to_i)
	end
end