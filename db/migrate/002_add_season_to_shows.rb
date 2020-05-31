class AddSeasonToShows < ActiveRecord::Migration[5.2]

    def change 
        add_column :create_shows, :season,:string 
    end 

end