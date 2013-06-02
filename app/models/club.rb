class Club < ActiveRecord::Base
  attr_accessible :name, :website, :party_id
  belongs_to :party
  has_many :endorsements
  has_many :people
end
