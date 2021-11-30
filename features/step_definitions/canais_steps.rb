Dado('que estou na sessao programacao') do
  canais.load
  canais.selecionar_programacao
end

Quando('busco {string}') do |canal|
  canais.buscar_canais(canal)
end

Entao('valido que o {string} aparece') do |canal|
  expect(page).to have_content canal
  expect(page).to have_no_content 'ESPN'
  expect(page).to have_no_content 'TOONCAST'
  expect(page).to have_no_content 'FUTURA'
end