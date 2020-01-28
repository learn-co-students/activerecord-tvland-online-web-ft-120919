class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list 
    actors = []
    firstname = self.actors.collect {|actor| actor.first_name }
    lastname = self.actors.collect {|actor| actor.last_name }
    allactors = firstname.concat lastname
    actors << allactors.join(" ")
    actors
  end
end
