class SummerProgram < ActiveRecord::Base

  has_many :applications, :class_name => "ProgramApplication", :dependent => :destroy

  has_many :scholarship_applications, :dependent => :destroy
end
