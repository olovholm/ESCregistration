class Vote < ActiveRecord::Base
  belongs_to :team
  belongs_to :country
  
  

  def self.show_points(arg)
    self.sum('show', :conditions => "country_id='#{arg}'")
  end
  
  def self.dresses_points(arg)
    self.sum('dressing', :conditions => "country_id='#{arg}'")
  end
  
  def self.english_points(arg)
    self.sum('english', :conditions => "country_id='#{arg}'")
  end
  
  def self.musical_quality_points(arg)
    self.sum('musical_quality', :conditions => "country_id='#{arg}'")
  end
  
  def self.total_points(arg)
    self.sum('total', :conditions => "country_id='#{arg}'")
  end
  
  
  '''
  :show
  t.integer :dressing
  t.integer :english
  t.integer :musical_quality
  t.integer :total
  '''
  
end
