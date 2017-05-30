class CreateScholarshipApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :scholarship_applications do |t|
      t.string :link_to_application
      t.string :essays
      t.integer :user_id
      t.integer :scholarship_amount
      t.date :application_deadline
      t.integer :summer_program_id

      t.timestamps

    end
  end
end
