class Planets
  include HTTParty

  headers 'Content-Type' => 'application/json'
  base_uri 'https://swapi.co/'

  def get_planets
    response = self.class.get('/api/planets/')
    generate_evidence(response)
    response
  end

  def get_planets(count)
    rand = Random.new
    count = rand.Rand(1..10) + count
    response = self.class.get("/api/planets/#{count}")
    generate_evidence(response)
    response
  end
end