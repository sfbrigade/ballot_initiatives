class Endorsement < ActiveRecord::Base
  attr_accessible :initiative_id, :supporting, :club_id, :person_id, :by_club
  belongs_to :initiative
  belongs_to :person
  belongs_to :club
end
