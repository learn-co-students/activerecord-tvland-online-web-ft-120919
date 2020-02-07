class CreateActors < ActiveRecord::Migration[5.2]
    # creates a table for the actors first_name and last_name
    def change
        create_table :actors do |t|
            t.string :first_name
            t.string :last_name
        end
    end


end