require 'spec_helper'

describe "CommaPersonBuilder" do
	before do
		@arr = ["Abercrombie, Neil, Male, Tan, 2/13/1943"]
	end

	describe ".build" do
		it "creates a Person object with information from the array" do
			expect(CommaPersonBuilder.build(@arr)).to eq(Person.new(
				firstname: 'Neil',
				lastname: 'Abercrombie',
				gender: 'M',
				birthdate: '2/13/1943',
				color: 'Tan')
			)
		end
	end
end