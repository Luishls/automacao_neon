class Films
  include HTTParty

  headers 'Content-Type' => 'application/json'
  base_uri 'https://swapi.co/'

  def get_films
    response = self.class.get('api/films/')
    generate_evidence(response)
    response
  end
end