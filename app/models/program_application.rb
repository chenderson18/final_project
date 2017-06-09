class ProgramApplication < ApplicationRecord

  belongs_to :summer_program
  belongs_to :user
  belongs_to :avatar
end
