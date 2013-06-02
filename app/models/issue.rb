class Issue < ActiveRecord::Base
  attr_accessible :name
  belongs_to :initiatives
  belongs_to :officials
  belongs_to :politicalcommittees
end
