class InitiativeIssue < ActiveRecord::Base
  attr_accessible :initiative_id, :issue_id
  belongs_to :initiative
  belongs_to :issue
end
