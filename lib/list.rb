require 'helper'

class List
	def initialize
		@list = []
	end

	def add_list(list)
		@list.concat list
		self
	end

	def gender_sort
		@list.sort_by { |person| [ person.gender, person.lastname ] }
	end

	def date_sort
		@list.sort_by { |person| [ person.birthdate, person.lastname ] }
	end

	def desc_sort
		@list.sort_by { |person| person.lastname }.reverse
	end
end