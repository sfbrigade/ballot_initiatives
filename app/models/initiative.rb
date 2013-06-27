class Initiative < ActiveRecord::Base
  attr_accessible :total_expenditures, :total_contributions, :description, :name, :status, :initiativetype, :year, :firm_ids, :issue_ids, :moreinfo, :ballotcode, :supportrate
  has_many :contracts
  has_many :firms, :through => :contracts
  has_and_belongs_to_many :issues
  has_many :expenditures
  has_many :contributions
  has_many :endorsements
#  accepts_nested_attributes_for :consultant_services, :allow_destroy => true
#  attr_accessible :consultant_services_attributes, :consultant_services
end
