$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'helper'

comma_list = ListBuilder.new.create("../codetest_files/input_files/comma.txt")
comma_builder = CommaPersonBuilder.new
comma_list.map! { |person| comma_builder.build(person) }

space_list = ListBuilder.new.create("../codetest_files/input_files/space.txt")
space_builder = SpacePersonBuilder.new
space_list.map! { |person| space_builder.build(person) }

pipe_list = ListBuilder.new.create("../codetest_files/input_files/pipe.txt")
pipe_builder = PipePersonBuilder.new
pipe_list.map! { |person| pipe_builder.build(person) }

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