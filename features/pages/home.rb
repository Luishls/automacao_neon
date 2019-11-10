class Home < SitePrism::Page

  element :perguntas_header, :xpath, "//ul[@class='header__nav-list']//child::a[contains(text(), 'Perguntas')]"
  
  def acessar_site_neon
    visit("https://www.neon.com.br/")
  end

  def click_perguntas_header
    perguntas_header.click
  end
end
