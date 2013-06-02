class Politicalcommittee < ActiveRecord::Base
  attr_accessible :issue_ids, :name
  has_and_belongs_to_many :officials
  has_many :issues
end
