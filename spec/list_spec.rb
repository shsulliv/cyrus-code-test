require 'spec_helper'

describe "List" do
	before do
		@list = List.new
		@person_one = Person.new(
				firstname: 'Neil',
				lastname: 'Abercrombie',
				gender: 'Male',
				birthdate: Date.new(1943,2,13),
				color: 'Tan')
		@person_two = Person.new(
				firstname: 'Anna',
				lastname: 'Kournikova',
				gender: 'Female',
				birthdate: Date.new(1975,6,3),
				color: 'Red')
		@new_list = [@person_one, @person_two]
	end

	describe "#add_list" do
		it "adds a list to the current list" do
			expect(@list.add_list(@new_list)).to eq([@person_one, @person_two])
		end
	end

	describe "#gender_sort" do
		it "sorts the list by females first" do
			expect(@list.gender_sort).to include()
		end
	end

	describe "#date_sort" do
	end

	describe "#desc_sort" do
	end
end

