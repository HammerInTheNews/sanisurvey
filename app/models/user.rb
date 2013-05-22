class User < ActiveRecord::Base
  attr_accessible :fullname
  has_many :surveys
end
