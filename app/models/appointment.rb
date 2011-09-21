class Appointment < ActiveRecord::Base
  belongs_to :patient
  has_one :schedular, :class_name => 'User'
end
