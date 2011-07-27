class CreateRelationshipPreferences < ActiveRecord::Migration
  def self.up
    create_table :relationship_preferences do |t|
      t.string :whos_preference
      t.boolean :any_preference_expressed
      t.boolean :whom_to_be_with
      t.boolean :whom_not_to_be_with
      t.boolean :some_better_than_others

      t.timestamps
    end
  end

  def self.down
    drop_table :relationship_preferences
  end
end
