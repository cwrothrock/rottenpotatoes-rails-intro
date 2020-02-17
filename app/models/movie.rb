class Movie < ActiveRecord::Base
    def self.ratings
        Movie.distinct.pluck(:rating)
    end
    
    def self.with_ratings ratings
        Movie.where(rating: ratings)
    end
end
