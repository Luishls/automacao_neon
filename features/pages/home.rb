class Home < SitePrism::Page

  element :perguntas_header, :xpath, "//ul[@class='header__nav-list']//child::a[contains(text(), 'Perguntas')]"
  element :status_servicos, :xpath, "//li[@class='footer__nav-list-item']//a[contains(text(), 'status')]"
  
  def acessar_site_neon
    visit("https://www.neon.com.br/")
  end

  def click_perguntas_header
    perguntas_header.click
  end

  def click_status_servicos_neon
    page.execute_script("window.scrollBy(0, 1200)", '')
    sleep 1
    status_servicos.click
  end
end
