class CreateRespondents < ActiveRecord::Migration
  def self.up
    create_table :respondents do |t|
      t.string :gender
      t.boolean :has_a_daughter
      t.integer :age
      t.integer :lives_in
      t.integer :born_in
      t.integer :mother_born_in
      t.integer :father_born_in
      t.string :ip

      t.timestamps
    end
  end

  def self.down
    drop_table :respondents
  end
end
