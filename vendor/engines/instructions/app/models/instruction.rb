class Instruction < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :description]
  
  validates_presence_of :title
  validates_uniqueness_of :title
  


end
