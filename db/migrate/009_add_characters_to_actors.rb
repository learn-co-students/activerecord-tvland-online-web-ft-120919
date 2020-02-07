class AddCharactersToActors < ActiveRecord::Migration[5.2]
    # adds a character_id column to the actors table
    def change
        add_column :actors, :character_id, :integer    
    end
end
