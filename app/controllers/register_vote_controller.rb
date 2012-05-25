class RegisterVoteController < ApplicationController
  
  def index
    redirect_to :action => "list"
  end
  
  def list
    @teams = Team.all

   
  end
  
  def show
    @team = Team.find_by_id(params[:id])
    @votes = @team.votes
  end
  
  def destroy
    @team = Team.find_by_id(params[:id])
    @votes = Vote.where(:team_id => "#{@team.id}")
    @votes.each {|v| v.destroy}
    @team.destroy
    redirect_to :action => "list"

    
  end
  
  def new
    @vote = Vote.new
    @countries = Country.all
    
  end 
  
  
  def create
    things = ['show', 'dressing', 'english', 'mquality', 'total']
    num_countries = Country.count
    puts "number of countries #{num_countries} "
    @team = Team.new
    @team.team_name = params[:name]
    @team.save
    
    
    
    (1..num_countries).each do |i|
      @vote = Vote.new
      @vote.team = @team
      @country = Country.find_by_id(i)
      
      things.each do |t|
        puts "values for #{i} and #{t}"
         case t
          when 'show'
            @vote.show = params["#{i}_#{t}"]
          when 'dressing'
            @vote.dressing = params["#{i}_#{t}"]
          when 'english'
            @vote.english = params["#{i}_#{t}"]
          when 'mquality'
            @vote.musical_quality = params["#{i}_#{t}"]
          when 'total'
            @vote.total = params["#{i}_#{t}"]
          else
            puts "**** SOMEHTING BAD HAPPENED ****"
          end
      end
      @vote.country = @country
      unless @vote.save
        render "ERROR"
      end
    end
    redirect_to :action => "list"
  end
  
  
  
end
