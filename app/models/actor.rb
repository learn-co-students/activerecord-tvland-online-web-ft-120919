class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters 

  def full_name
    "#{self.first_name} #{self.last_name}"
  end #full_name

  def list_roles
    roles = self.characters.map{|char| "#{char.name} - #{char.show.name}"} 
    #binding.pry
  end #list_roles
end