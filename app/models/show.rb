class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    # array = []
    actors_name = self.characters.collect {|c| c.actor.full_name}
    actors_name.flatten
    # array << actors_name
    # array.flatten
    # binding.pry
  end 
end