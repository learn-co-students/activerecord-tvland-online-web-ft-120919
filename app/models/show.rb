class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    array = []
    actors_name = self.actors.each {|actor| actor.full_name}
    array << actors_name
    array
  end 
end