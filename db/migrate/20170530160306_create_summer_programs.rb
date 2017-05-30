class CreateSummerPrograms < ActiveRecord::Migration[5.0]
  def change
    create_table :summer_programs do |t|
      t.integer :tuition
      t.string :description
      t.string :location
      t.date :start_date
      t.date :end_date
      t.integer :scholarship_information
      t.integer :application_fee
      t.string :academic_area
      t.string :binding
      t.string :program_category
      t.string :application_notes
      t.string :region
      t.date :financial_aid_deadline
      t.date :minds_matter_deadline
      t.string :application
      t.string :transcript
      t.string :recommendation_letters
      t.string :sat_act
      t.string :essays
      t.string :essay_topic
      t.string :resume
      t.string :gpa_min
      t.string :contact
      t.string :website
      t.string :international

      t.timestamps

    end
  end
end
