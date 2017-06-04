namespace :slurp do
  desc "TODO"
  task summer_programs: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "summer_programs.csv"))
    puts csv_text

    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "summer_programs.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    puts csv

    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "summer_programs.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
    puts row.to_hash
    end
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "summer_programs.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Transaction.new
      t.street_address = row["street"]
      t.tuition = row["tuition"]
      t.description = row["description"]
      t.location = row["location"]
      t.start_date = row["start_date"]
      t.save
      puts "#{t.street_address}, #{t.zip} saved"
      end

  end

end
