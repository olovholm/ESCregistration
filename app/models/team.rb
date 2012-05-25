class Team < ActiveRecord::Base
  attr_accessible :team_name
  has_many :votes
  
end
