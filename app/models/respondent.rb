class Respondent < ActiveRecord::Base
  attr_accessible :age, :gender, :has_a_daughter
   
  belongs_to :lives_in, :class_name => "Country", :foreign_key => :lives_in
  belongs_to :born_in, :class_name => "Country", :foreign_key => :born_in
  belongs_to :mother_born_in, :class_name => "Country", :foreign_key => :mother_born_in
  belongs_to :father_born_in, :class_name => "Country", :foreign_key => :father_born_in
  
  IP_REGEX = /^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}$/
  validates :ip, :format => { :with => IP_REGEX }
  
end
