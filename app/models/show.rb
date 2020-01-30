class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.actors.map {|a| a.full_name}
  end

  def build_network(call_letters)
    Network.find_or_create_by(call_letters).shows << self
    binding.pry
  end
end