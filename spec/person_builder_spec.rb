require 'spec_helper'

describe 'PersonBuilder' do

	before do
		@person_string = 'Abercrombie, Neil, Male, Tan, 2/13/1943'
		@person = Person.new(
			firstname: 'Neil',
			lastname: 'Abercrombie',
			gender: 'Male',
			birthdate: Date.new(1943,2,13),
			color: 'Tan')
		@person_array = ['Abercrombie', 'Neil', 'Male', 'Tan', '2/13/1943']
	end

	describe '#person_array' do
		it 'splits the person string at " ", "," or "|"' do
			expect(@person_string.split(', ')).to eq(@person_array)
		end
	end

	describe '#format_gender' do
		it 'displays the gender in word format' do
			expect(@person.gender).to eq('Male')
		end
	end

	describe '#format_date' do
		it 'creates a Date object from a string' do
			expect(@person.birthdate).to eq(Date.new(1943,2,13))
		end
	end
end
