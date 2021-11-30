class Canais < SitePrism::Page
  set_url ''
  # set_url '/programacao'  forma mais simples de chegar em programacao

  element :fecharPopup, :xpath, '//*[@id="portlet_com_liferay_journal_content_web_portlet_JournalContentPortlet_INSTANCE_YQcCxObpxg0J"]/div/div[2]/div/div[2]/div/div/div/div[1]/button/span'
  element :programacao, :xpath, '//*[@id="main-menu"]/div[2]/div[2]/ul[1]/li[3]/a'
  element :listaCanais, :xpath, '//*[@id="portlet_com_liferay_journal_content_web_portlet_JournalContentPortlet_INSTANCE_aKJUz209eKa8"]/div/div[2]/div/div[2]/section/div/div[1]/div/div/a[2]/div/span[2]/h1[1]'
  element :procuraCanal, '#searchChannel'

  def selecionar_programacao
    fecharPopup.click if fecharPopup.visible?
    programacao.visible?
    programacao.click
  end

  def buscar_canais(canal)
    listaCanais.visible?
    listaCanais.click
    procuraCanal.visible?
    procuraCanal.set canal
  end

end