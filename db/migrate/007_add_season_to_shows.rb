class AddSeasonToShows < ActiveRecord::Migration[5.2]
    # add a seasons column to the shows table
    def change
        add_column :shows, :season, :string
    end
end