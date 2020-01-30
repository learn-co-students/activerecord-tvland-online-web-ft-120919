require 'pry'
class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        self.characters.map{|l|l.actor.full_name}.to_a
    end

  
end