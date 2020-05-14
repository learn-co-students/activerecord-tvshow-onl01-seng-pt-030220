class Show < ActiveRecord::Base

    def self.highest_rating
        Show.all.maximum("rating")
    end

    def self.most_popular_show
    Show.where("rating").first
    end

    def self.lowest_rating 
    Show.all.minimum("rating")
    end

    def self.least_popular_show 
    Show.order("rating ASC").first
    end

    def self.ratings_sum 
    self.sum("rating")
    end

    def self.popular_shows 
    ratings = []
    ratings<< Show.where("rating >=5")
    ratings[0]
    end

    def self.shows_by_alphabetical_order 
    # binding.pry
    Show.order("name ASC")
    end

end