class Person < ActiveRecord::Base
  attr_accessible :name, :website
  has_many :endorsements
  belongs_to :club
  belongs_to :official
end
