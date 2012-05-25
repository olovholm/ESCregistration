class CountryController < ApplicationController
  def index
    redirect_to :action => "list"
  end
  
  def list 
    @contries = Country.all
  end
  
  def new 
    @country = Country.new
  end
  
  def create 
    @country = Country.new(params[:country])
    if @country.save 
      redirect_to :action => "list"
    else 
      render :action => "new"
    end
  end
  
end
