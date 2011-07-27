class ISaysController < RelationshipPreferencesController
  def new
    super
    @relationship_preference.whos_preference = "i"
  end
  
  def create
    @respondent = Respondent.find params[:respondent_id]
    params[:relationship_preference][:whos_preference] = "i"
    @relationship_preference = RelationshipPreference.create params[:relationship_preference]
    
    if @relationship_preference.save
      redirect_to thanks_path
    else
      respond_to do |format|
        format.html { render :action => :new }
      end
    end
  end #create
end