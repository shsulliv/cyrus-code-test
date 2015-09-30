require 'spec_helper'

describe "PipePersonBuilder" do
	before do
		@arr = ["Smith | Steve | D | M | Red | 3-3-1985"]
	end

	describe ".build" do
		it "creates a Person object with information from the array" do
			expect(PipePersonBuilder.build(@arr)).to eq(Person.new(
				firstname: 'Steve',
				lastname: 'Smith',
				gender: 'M',
				birthdate: '3/3/1985',
				color: 'Red'))
		end
	end
end