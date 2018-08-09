class MoviesController < ApplicationController
  def search
    unless params[:title].nil?
      @movies = SearchMovie.new(params[:title]).perform
    end
  end
end
