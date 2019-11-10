class StatusNeon < SitePrism::Page

  def validar_status(servico)
    sleep 2
    page.execute_script("window.scrollBy(0, 250)", '')
    find(:xpath, "//p[text()='#{servico}']//ancestor::div[1]").text.eql? "Funcionando normalmente"
  end
end