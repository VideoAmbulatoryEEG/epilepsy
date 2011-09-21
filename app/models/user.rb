class User < ActiveRecord::Base
  belongs_to :group
  has_many :group_permissions, :through => :group
end
