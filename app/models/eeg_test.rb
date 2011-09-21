class EegTest < ActiveRecord::Base
  has_one :technician, :class_name => 'User'
  belongs_to :patient
  belongs_to :eeg_lab
end
