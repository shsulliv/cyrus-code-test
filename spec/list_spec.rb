require 'spec_helper'

describe "List" do
	before do
		@list = List.new
		@person_one = Person.new(firstname: 'Jon', lastname: 'Snow', gender: 'Male', birthdate: '1/31/1989', color: 'black')
		@person_two = Person.new(firstname: 'Arya', lastname: 'Stark', gender: 'Female', birthdate: '12/14/1991', color: 'blue')
	end

	describe "#add_list" do
		it "adds a list to the current list" do
			expect(@list.add_list(@new_list)).to include(["Dorne", "High Garden", "King's Landing"])
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

