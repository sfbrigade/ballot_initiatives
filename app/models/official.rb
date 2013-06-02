class Official < ActiveRecord::Base
  attr_accessible :duties, :firm_id, :issue_id, :next_election, :office, :person_id, :politicalcommittee_id, :term_begin, :term_end, :term_limit
  has_and_belongs_to_many :firms
  has_many :issues
  belongs_to :person
  has_and_belongs_to_many :politicalcommittees
end
