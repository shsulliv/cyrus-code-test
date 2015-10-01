require 'spec_helper'

describe 'CommaPersonBuilder' do
	before do
		@comma_builder = CommaPersonBuilder.new
		@person_string = 'Abercrombie, Neil, Male, Tan, 2/13/1943'
		@person = Person.new(
			firstname: 'Neil',
			lastname: 'Abercrombie',
			gender: 'Male',
			birthdate: Date.new(1943,2,13),
			color: 'Tan')
	end

	describe '#build' do
		it "creates a Person object with information from the string" do
			expect(@comma_builder.build(@person_string).to_s).to eq(@person.to_s)
		end
	end
end