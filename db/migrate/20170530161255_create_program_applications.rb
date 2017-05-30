class CreateProgramApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :program_applications do |t|
      t.integer :summer_program_id
      t.text :reason_for_choosing
      t.text :notes
      t.integer :user_id

      t.timestamps

    end
  end
end
