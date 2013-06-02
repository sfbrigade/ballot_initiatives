class Expenditure < ActiveRecord::Base
  attr_accessible :amount, :committee_id, :initiative_id
  belongs_to :committee
  belongs_to :initiative
end
