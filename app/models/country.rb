class Country < ActiveRecord::Base
  attr_accessible :name, :nor_name, :short_id, :long_id, :song_name, :actor_name
  has_many :votes
  
end
