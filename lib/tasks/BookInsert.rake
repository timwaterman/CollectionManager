namespace :books do
	desc "This is a task to parse in all my books"

	task :read_all => [ :environment ] do

		puts "Starting to read CSV"

		require 'csv'

		header = true

		CSV.foreach("datasets/BX-Books.csv") do |row|
			if header == true #strip out the headers
				header = false
			else
				ISBN = row[0]
				title = row[1]
				author = row[2]

				year = row[3].to_i
				publisher = row[4]

				url = row[6]

				Book.create(title: title, author: author, isbn: ISBN, year: year, publisher: publisher, photo: url);

				#now create a new book with all this information
			end

		end #end foreach

	end #end task
	
end #end namespace