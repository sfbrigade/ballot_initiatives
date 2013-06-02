class Firm < ActiveRecord::Base
  attr_accessible :name, :phone, :email
  has_many :contracts
  has_many :initiatives, :through => :consultant_services
  has_and_belongs_to_many :officials
end
