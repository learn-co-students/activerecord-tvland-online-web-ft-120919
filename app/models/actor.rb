class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full_name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    list_roles = []
    character = self.characters.map{|character|character.name}
    list_roles << character
    show = self.shows.map{|show|show.name}
    list_roles << show
    list_roles.join(" - ")
  end
end