require 'spec_helper'

describe 'SpacePersonBuilder' do
	before do
		@space_builder = SpacePersonBuilder.new
		@person_string = 'Kournikova Anna F F 6-3-1975 Red'
		@person = Person.new(
			firstname: 'Anna',
			lastname: 'Kournikova',
			gender: 'Female',
			birthdate: Date.new(1975,6,3),
			color: 'Red')
	end

	describe '#build' do
		it 'creates a Person object with information from the string' do
			expect(@space_builder.build(@person_string).to_s).to eq(@person.to_s)
		end
	end
end