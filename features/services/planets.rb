class Planets
  include HTTParty

  headers 'Content-Type' => 'application/json'
  base_uri 'https://swapi.co/'

  def get_planets
    response = self.class.get('/api/planets/')
    response
  end

  def get_planets_invalid(count)
    rand = Random.new
    count = rand(1..10) + count
    response = self.class.get("/api/planets/#{count}")
    puts response
    response
  end
end