class Show < ActiveRecord::Base

    def self.highest_rating
        #find the maximum value of a field in table
        self.maximum(:rating)
    end

    def self.most_popular_show
     Show.order('rating DESC')[0]
    end

    def self.lowest_rating
        self.minimum(:rating)
    end

    def self.least_popular_show
        Show.order('rating ASC')[0]
    end

    def self.ratings_sum
        self.sum(:rating)
    end

    def self.popular_shows
        self.find_by_sql("Select * FROM shows WHERE rating > 5")
    end

    def self.shows_by_alphabetical_order
        self.order(:name)
    end

end