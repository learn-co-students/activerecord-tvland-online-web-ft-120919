class Show < ActiveRecord::Base
    # A show has many characters and has many actors through characters.
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def build_network(call_letters:)
        network = Network.create(call_letters: call_letters)
        self.network = network
        # binding.pry
    end

    def actors_list
        # binding.pry
        self.actors.collect { |act| act.full_name}
    end

    # self.artists.collect { |artist| artist.name}

    # binding.pry
        # 

        # self.actors.map { |actor|" #{actor.full_name}"}
        # self.actors.full_name
        # self.actors

end