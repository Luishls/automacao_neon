module Utils
  include HTTParty

  def generate_evidence(response)
    evidence_folder = FOLDER_PATH
    verb = response.request.http_method::METHOD
    evidence_file = "#{evidence_folder}/#{Time.now.strftime('%Hh%Mm%Ss%L')}_#{verb}.txt"
    response_debug_console(response) if DEBUG
    File.open(evidence_file, 'w:ASCII-8BIT') do |f|
      f << "===================== REQUEST =================== \n"
      f << ">>>> ENDPOINT: #{response.request.last_uri} \n"
      f << ">>>> BANDEIRA: #{BANDEIRA.upcase} \n"
      f << ">>>> AMBIENTE: #{AMBIENTE.upcase} \n\n"
      f << ">>>> REQUEST BODY: \n"
      f << "#{response.body.empty? ? response : response.request.options}\n" unless verb.eql?('GET')
      f << "=================================================\n"
      f << "==================== RESPONSE =================== \n"
      f << "\n>>>> RESPONSE HEADERS <<<<\n"
      response.header.each { |key, value| f << "#{key}: #{value}\n" }
      f << "\n>>>> RESPONSE BODY <<<<\n"
      f << "#{response.body.empty? ? "Response: #{response.code}" : JSON.pretty_generate(format_json(response.body))} \n"
      f << "================================================= \n"
    end
  end
end