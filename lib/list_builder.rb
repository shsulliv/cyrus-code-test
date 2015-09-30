class ListBuilder
	def read_file(file)
		IO.readlines(file)
	end

	def create(file)
		lines = read_file(file).map(&:strip)
		persons = []
		lines.each do |line|
			persons << line
		end
		persons
	end
end