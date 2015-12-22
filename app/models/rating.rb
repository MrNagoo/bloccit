class Rating < ActiveRecord::Base
  enum severity: [ :PG, :PG13, :R ]

  has_many :topics
  has_many :posts

  def self.update_ratings(rating_string)
    return Rating.none if rating_string.blank?
    rating_string.split(",").map do |label|
      Rating.find_or_create_by(name: rating.strip)
    end
  end
end
