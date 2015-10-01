require 'spec_helper'

describe 'ListBuilder' do
	before do
		@listbuilder = ListBuilder.new
		@file = './codetest_files/input_files/comma.txt'
		@person_array =
			['Abercrombie, Neil, Male, Tan, 2/13/1943',
			'Bishop, Timothy, Male, Yellow, 4/23/1967',
			'Kelly, Sue, Female, Pink, 7/12/1959']
		end

		describe '#create' do
			it 'returns a new array with info from a file' do
				expect(@listbuilder.create(@file)).to eq(@person_array)
			end
		end
	end
