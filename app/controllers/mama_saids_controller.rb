class MamaSaidsController < RelationshipPreferencesController
  def new
    super
    @relationship_preference.whos_preference = "mama"
  end
  
  def create
    @respondent = Respondent.find params[:respondent_id]
    params[:relationship_preference][:whos_preference] = "mama"
    @relationship_preference = RelationshipPreference.create params[:relationship_preference]
    
    if @relationship_preference.save
      if @respondent.has_a_daughter
        redirect_to new_respondent_i_say_path(@respondent)
      else
        redirect_to thanks_path
      end
    else
      respond_to do |format|
        format.html { render :action => :new }
      end
    end
  end #create
  
end