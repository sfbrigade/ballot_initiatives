class Contract < ActiveRecord::Base
  attr_accessible :amount_promised, :amount_received, :committee_id, :firm_id, :initiative_id, :services
  belongs_to :firm
  belongs_to :committee
  belongs_to :initiative
end
