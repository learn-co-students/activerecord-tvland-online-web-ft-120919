class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end 

  def list_roles
    list_of_roles = []
    characters_name = self.characters.map {|character| character.name}
    shows_name = self.shows.map {|show| show.name}
    list = characters_name.union(shows_name)
    list_of_roles << list.join(" - ")
    list_of_roles
  end 
end