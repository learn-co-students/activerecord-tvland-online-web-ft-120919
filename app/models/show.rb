class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  belongs_to :genre 
  
  
  
  def actors_list 
    self.actors.each do |actor|
      actor.full_name 
      
    end 
  end 
  
  
end