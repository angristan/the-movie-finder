class MoviesController < ApplicationController
  def search
    # @movies = SearchMovie.new.perform
    @movies = params[:title]
  end
end
