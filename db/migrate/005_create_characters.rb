class CreateCharacters < ActiveRecord::Migration[5.2]
    # creates characters table that links a character to their show and the name of that actor
    def change
        
        create_table :characters do |t|
            t.string :name
            t.string :catchphrase
            t.integer :show_id
            t.integer :actor_id
        end
    end
end