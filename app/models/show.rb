class Show < ActiveRecord::Base
   has_many :characters
   has_many :actors, through: :characters
   belongs_to :network

   def actors_list
      full_name = []
      name =[]
     first_name = self.actors.map{|actor|actor.first_name}
     full_name << first_name
     last_name = self.actors.map{|actor|actor.last_name}
     full_name << last_name
    name << full_name = full_name.join(" ")
    name
   end
end