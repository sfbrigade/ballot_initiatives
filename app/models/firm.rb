class Firm < ActiveRecord::Base
  attr_accessible :name, :services
  has_many :consultant_services
  has_many :initiatives, :through => :consultant_services
end
