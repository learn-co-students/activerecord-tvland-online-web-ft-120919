class AddGenreToShows < ActiveRecord::Migration[5.2]
    # adds a genre column to the shows table
    def change
        add_column :shows, :genre, :string
    end
end