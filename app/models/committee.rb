class Committee < ActiveRecord::Base
  attr_accessible :name
  has_many :expenditures
  has_many :contributions
  has_many :contracts
end
