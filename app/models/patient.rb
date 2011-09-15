class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :eeg_tests
end
