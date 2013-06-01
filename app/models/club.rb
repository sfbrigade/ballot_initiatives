class Club < ActiveRecord::Base
  attr_accessible :name, :website, :party_id
  belongs_to :party
end
