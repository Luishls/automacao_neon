Dado("que esteja na página de de Status Neon") do
  home = Home.new
  home.acessar_site_neon
  home.click_status_servicos_neon
end
  
Então("o serviço {string} deve estar funcionando corretamente") do |servico|
  status = StatusNeon.new
  status.validar_status(servico)
end