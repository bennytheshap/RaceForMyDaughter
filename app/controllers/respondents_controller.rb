class RespondentsController < ApplicationController
  def new
    @respondent = Respondent.new
  end
  
  def create  
    @respondent = Respondent.new params[:respondent]
    
    assign_place_names_as_ids params[:respondent]
    @respondent.ip = request.remote_ip
    
    if @respondent.save
      redirect_to new_respondent_mama_said_path(@respondent)
    else
      respond_to do |format|
        format.html { render :action => :new }
      end
    end
    
  end
  
  def show
    
  end
  
  def index
    
  end
  
  def assign_place_names_as_ids(params)
    @respondent.born_in = country_name_to_country params[:born_in]
    @respondent.lives_in = country_name_to_country params[:lives_in]
    @respondent.mother_born_in = country_name_to_country params[:mother_born_in]
    @respondent.father_born_in = country_name_to_country params[:father_born_in]
  end
  
  def country_name_to_country(name)
    Country.find_by_name(name)
  end
  
end