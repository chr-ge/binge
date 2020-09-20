require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  
  test "create movie with valid attributes" do
    movie = Movie.new(title: "Captain Marvel 2", rating: "PG", total_gross: 654654654.0, 
      director: "Good Director", description: "Captain Marvel 2 Movie PG 1999", released_on: "1999-12-15 00:00:00", 
      duration: "181 min")
    assert movie.save
  end

  test "create movie with valid rating" do
    movie = Movie.new(title: "Captain Marvel 2", rating: "PG-99", total_gross: 654654654.0, 
      director: "Good Director", description: "Captain Marvel 2 Movie PG 1999", released_on: "1999-12-15 00:00:00", 
      duration: "181 min")
    assert_not movie.save
  end
end
