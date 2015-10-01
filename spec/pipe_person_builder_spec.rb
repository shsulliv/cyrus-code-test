require 'spec_helper'

describe 'PipePersonBuilder' do
	before do
		@pipe_builder = PipePersonBuilder.new
		@person_string = 'Smith | Steve | D | M | Red | 3-3-1985'
		@person = Person.new(
			firstname: 'Steve',
			lastname: 'Smith',
			gender: 'Male',
			birthdate: Date.new(1985,3,3),
			color: 'Red')
	end

	describe '#build' do
		it 'creates a Person object with information from the string' do
			expect(@pipe_builder.build(@person_string).to_s).to eq(@person.to_s)
		end
	end
end