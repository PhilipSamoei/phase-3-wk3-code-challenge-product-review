class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :product
  
    def print_review
      puts "Review for #{product.product_name} by #{user.user_name}: #{star_rating}. #{comment}"
    end
  
    def self.average_rating
      average(:star_rating)
    end
end