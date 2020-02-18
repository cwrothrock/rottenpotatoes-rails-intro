class Movie < ActiveRecord::Base
    def self.ratings
        Movie.distinct.pluck(:rating)
    end
    
    def self.with_ratings ratings
        Movie.where(rating: (ratings.is_a?(Hash) ? ratings.keys : ratings))
    end
end
