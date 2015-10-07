namespace :sat do
    desc "This is a task to parse SAT scores of NY schools"

    task :parse_Scores => [ :environment ] do

        puts "starting to read in CSV"

        require 'csv'

        header = true
        CSV.foreach("SAT_Results.csv") do |row|
            if header == true
                header = false
            else
            school = row[1]
            numStudents = row[2].to_i
            reading = row[3].to_i
            math = row[4].to_i
            writing = row[5].to_i
            Score.create(schoolName: school, numTestTakers: numStudents, readingScore: reading, mathScore: math, writingScore: writing)

            end
        end

    end

end
