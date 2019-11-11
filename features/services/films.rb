class Films
  include HTTParty

  headers 'Content-Type' => 'application/json'
  base_uri 'https://swapi.co/'

  def get_films
    response = self.class.get('/api/films/')
  end
end