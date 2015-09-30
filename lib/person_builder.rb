require 'date'
require_relative './person.rb'

class PersonBuilder

	def self.format_gender(gender)
		case gender
		when "M" then "Male"
		when "F" then "Female"
		else gender
		end
	end

	def self.format_date(date)
		if date.include? '-'
			date_array = date.split('-')
		elsif date.include? '/'
			date_array = date.split('/')
		else
			date_array = date
		end
		Date.new(date_array[2].to_i, date_array[0].to_i, date_array[1].to_i)
	end

end