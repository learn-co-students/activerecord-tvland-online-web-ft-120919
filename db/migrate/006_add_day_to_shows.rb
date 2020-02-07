class AddDayToShows < ActiveRecord::Migration[5.2]
    # adds a day column to the shows table
    def change
        add_column :shows, :day, :string
    end
end