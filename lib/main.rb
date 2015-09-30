$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/../lib")
require 'helper.rb'

comma_list = ListBuilder.new.create("../codetest_files/input_files/comma.txt")
comma_list.map! { |person| CommaPersonBuilder.build(person) }

space_list = ListBuilder.new.create("../codetest_files/input_files/space.txt")
space_list.map! { |person| SpacePersonBuilder.build(person) }

pipe_list = ListBuilder.new.create("../codetest_files/input_files/pipe.txt")
pipe_list.map! { |person| PipePersonBuilder.build(person) }

master_list = List.new
master_list
	.add_list(comma_list)
	.add_list(pipe_list)
	.add_list(space_list)

puts "--- Output One ---"
puts master_list.gender_sort

puts "--- Output Two ---"
puts master_list.date_sort

puts "--- Output Three ---"
puts master_list.desc_sort