namespace :slurp do
  desc "TODO"
  task summer_programs: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "summer_programs.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
    puts row.to_hash
      t = SummerProgram.new
      t.program_category = row["program_category"]
      t.program = row["program"]
      t.academic_area = row["academic_area"]
      t.application_notes = row["application_notes"]
      t.location = row["location"]
      t.region = row["region"]
      t.financial_aid_deadline = row["financial_aid_deadline"]
      t.minds_matter_deadline = row["minds_matter_deadline"]
      t.tuition = row["tuition"]
      t.application_fee = row["application_fee"]
      t.program_duration = row["program_duration"]
      t.application = row["application"]
      t.transcript = row["transcript"]
      t.recommendation_letters = row["recommendation_letters"]
      t.essays = row["essays"]
      t.resume = row["resume"]
      t.website = row["website"]
      t.save
      puts "#{t.program_category}, #{t.program}, #{t.academic_area}, #{t.application_notes}, #{t.location}, #{t.region} saved"
      end

      puts "There are now #{SummerProgram.count} rows in the summer programs table"
  end

end
