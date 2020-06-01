class Show < ActiveRecord::Base

    def highest_rating 
        Show.maximum('rating')
    end 

    def most_popular_show
        Show.maximum('rating')
    end 

    def lowest_rating 
        Show.minimum('rating')
    end 

    def least_popular_show
        Show.minimum('rating')
    end 
     
    def ratings_sum 
        Show.sum(:rating)
    end 

    def popular_shows 
        Show.where(popular_shows > 5)
    end 
    
    def shows_by_alphabetical_order
        Show.order(created_at: :asc)
    end 


end 