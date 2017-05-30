class ScholarshipApplication < ApplicationRecord

  belongs_to :summer_program
  belongs_to :user
end
