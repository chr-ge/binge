require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie = movies(:spiderman2)
  end

  test "should get movies index" do
    get movies_url
    assert_response :success
  end

  # test "should get movies new" do
  #   get new_movie_url
  #   assert_response :success
  # end

  # test "should create movie" do
  #   assert_difference('Movie.count') do
  #     post movies_url, params: { movie: { 
  #       title: @movie.title, rating: @movie.rating, total_gross: @movie.total_gross, 
  #       duration: @movie.duration, released_on: @movie.released_on, description: @movie.description, director: @movie.director
  #     }}
  #   end

  #   assert_redirected_to movie_url(@movie)
  # end

  test "should get movie" do
    get movie_url(@movie)
    assert_response :success
  end
end