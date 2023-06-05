class Product < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

   leave_review(user, star_rating, comment)
    Review.create(user: user, product: self, star_rating: star_rating, comment: comment)
  end

  def print_all_reviews
    reviews.each { |review| review.print_review }
  end

  def average_rating
    reviews.average_rating
  end
end