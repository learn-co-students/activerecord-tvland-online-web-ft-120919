require 'pry'
class Show < ActiveRecord::Base
    has_many :characters
    has_many :actor, through: :characters
    belongs_to :networks

    def actors_list
        self.characters.map{|l|l.actor.full_name}.to_a
        # binding.pry

    end

    def build_network(arg)
        # binding.pry
    end
  
end