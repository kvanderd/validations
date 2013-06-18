class Event < ActiveRecord::Base
  validates_uniqueness_of :title 
  validates :organizer_name, :presence => true 
  validates :organizer_email, :format => { :with => /.*(@).*/,
  	:message => ":Please Make sure this is a valid email" }   
end


