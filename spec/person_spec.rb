require 'rspec'

describe "Person" do
	before do
		@person = Person.new(firstname: 'Neil', lastname: 'Abercrombie', gender: 'Male', birthdate: '2/13/1943', color: 'Tan')
	end

	describe "#to_s" do
		it "displays a person's information in a specific order" do
			expect(@person.to_s).to eq("Abercrombie Neil Male 2/13/1943 Tan")
		end
	end
end
