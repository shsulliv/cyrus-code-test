class ListBuilder

	def create(file)
		read_file(file).map { |line| line.strip }
	end

	private

	def read_file(file)
		IO.readlines(file)
	end
end