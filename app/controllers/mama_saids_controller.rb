class MamaSaidsController < RelationshipPreferencesController
  def new
    @respondent = Respondent.find params[:respondent_id]
    @relationship_preference = RelationshipPreference.new
    @relationship_preference.whos_preference = "mama"
  end
end