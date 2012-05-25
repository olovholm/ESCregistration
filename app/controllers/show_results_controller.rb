class ShowResultsController < ApplicationController
  def index
    
    
  end
  
  def show
    @countrylist = Array.new
    @countries = Country.all
    @countries.each do |c| 
      @countrylist << {:id => c.id, :sum => Vote.show_points(c.id), :obj => Country.find_by_id(c.id)}
    end
    @countrylist.sort_by! { |country| country[:sum] }
    @countrylist.reverse!
  end
  
  def dresses
    @countrylist = Array.new
    @countries = Country.all
    @countries.each do |c| 
      @countrylist << {:id => c.id, :sum => Vote.dresses_points(c.id), :obj => Country.find_by_id(c.id)}
    end
    @countrylist.sort_by! { |country| country[:sum] }
    @countrylist.reverse!
  end
  
  def english
    @countrylist = Array.new
    @countries = Country.all
    @countries.each do |c| 
      @countrylist << {:id => c.id, :sum => Vote.english_points(c.id), :obj => Country.find_by_id(c.id)}
    end
    @countrylist.sort_by! { |country| country[:sum] }
    @countrylist.reverse!
  end
  
  def musical_quality
    @countrylist = Array.new
    @countries = Country.all
    @countries.each do |c| 
      @countrylist << {:id => c.id, :sum => Vote.musical_quality_points(c.id), :obj => Country.find_by_id(c.id)}
    end
    @countrylist.sort_by! { |country| country[:sum] }
    @countrylist.reverse!
  end
  
  def total 
    @countrylist = Array.new
    @countries = Country.all
    @countries.each do |c| 
      @countrylist << {:id => c.id, :sum => Vote.total_points(c.id), :obj => Country.find_by_id(c.id)}
    end
    @countrylist.sort_by! { |country| country[:sum] }
    @countrylist.reverse!
  end
  
end
'''
SELECT SUM(column_name) FROM table_name
 t.integer :show
  t.integer :dressing
  t.integer :english
  t.integer :musical_quality
  t.integer :total
  
'''