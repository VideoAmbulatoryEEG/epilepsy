class Hospital < ActiveRecord::Base
  has_many :eeg_labs
end
