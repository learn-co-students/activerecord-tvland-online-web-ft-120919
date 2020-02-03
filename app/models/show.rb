class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  belongs_to :genre 
  
  def actors_list 
    shows.actors do 
      actors.full_name.collect[]
    end 
  end 
  
  
end