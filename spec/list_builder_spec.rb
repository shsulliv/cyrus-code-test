require 'spec_helper'

describe "ListBuilder" do
	before do
		@listbuilder = ListBuilder.new
	end
end

	describe "#read_file" do
		it "reads lines from a text file" do
			expect(@listbuilder.read_file("../codetest_files/input_files/comma.txt")).to eq([["Abercrombie, Neil, Male, Tan, 2/13/1943"], ["Bishop, Timothy, Male, Yellow, 4/23/1967"],["Kelly, Sue, Female, Pink, 7/12/1959"]])
		end
	end

	describe "#create" do
		it "returns a new array with info from a file" do
			expect(@listbuilder.create("../codetest_files/input_files/comma.txt").to eq(["Abercrombie, Neil, Male, Tan, 2/13/1943", "Bishop, Timothy, Male, Yellow, 4/23/1967","Kelly, Sue, Female, Pink, 7/12/1959"]))
		end
	end
