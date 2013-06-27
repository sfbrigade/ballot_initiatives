class Issue < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :initiatives
  belongs_to :officials
  belongs_to :politicalcommittees
end
