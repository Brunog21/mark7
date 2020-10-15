Dado('que esteja no formulario de cadastro') do
  visit '/register'
  sleep 5
end

Quando('faço cadastro com {string}, {string} e {string}') do |nome, email, senha|
  @cadastro = Cadastro.new
  @cadastro.cadastrar(nome, email, senha)
end

Então('vejo a mensagem {string}') do |mensagem|
  expect(page).to have_content mensagem
end
