require 'rspec'

describe "PersonBuilder" do

	before do
		@person = Person.new(
			firstname: 'Neil',
			lastname: 'Abercrombie',
			gender: 'M',
			birthdate: '2/13/1943',
			color: 'Tan')
	end

	describe ".format_gender" do
		it "displays the gender in word format" do
			expect(@person.gender).to eq('Male')
		end
	end

	describe ".format_date" do
		it "creates a Date object from a string" do
			expect(@person.birthdate).to eq(Date.new(1943,13,2))
		end
	end
end
