class Party < ActiveRecord::Base
  attr_accessible :name, :website
  has_many :clubs
end
