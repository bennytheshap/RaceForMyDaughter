class RelationshipPreferencesController < ApplicationController
  def new
    @respondent = Respondent.find params[:respondent_id]
    @relationship_preference = RelationshipPreference.new
  end
end