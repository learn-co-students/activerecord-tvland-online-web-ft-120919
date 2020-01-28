class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = []
    characters_played = self.characters.map {|character| character.name}
    shows_in = self.shows.map {|show| show.name}
    role = characters_played.concat shows_in
    roles << role.join(" - ")
    roles
  end
end