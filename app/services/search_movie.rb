class SearchMovie
  def initialize(user_input)
    @user_input = user_input
  end

  def perform
    search
  end

  private

  def search
    Tmdb::Api.key(Rails.application.credentials.dig(:api_key_v3))

    @search = Tmdb::Search.new
    @search.resource('movie')
    @search.query(@user_input)

    hash_result = @search.fetch.first(20)
    array_cleaned = []

    hash_result.each do |movie|
      hash_movie = {}
      hash_movie['id'] = movie['id']
      hash_movie['title'] = movie['title']
      credit = Tmdb::Movie.credits(movie['id'])

      if !credit.empty?
        if !credit['crew'].empty?
          if credit['crew'][0]['name']
            director = credit['crew'][0]['name']
          end
        end
      else
        director = nil
      end

      hash_movie['director'] = director
      hash_movie['date']     = movie['release_date']
      hash_movie['poster']   = movie['poster_path']
      array_cleaned << hash_movie
    end

    array_cleaned
  end
end
