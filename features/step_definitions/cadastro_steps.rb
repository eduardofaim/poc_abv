Dado("que eu esteja na tela do aplicativo abv") do
@geral = Cadastro.new
@geral.validar_texto
end

Quando("efetuar o cadastro") do
@cadastro = Cadastro.new
@cadastro.clicar_criar_novaconta
@cadastro.realizar_cadastro(Faker::Name.first_name,Faker::CPF.numeric,Faker::Internet.password(6,8))
@cadastro.clicar_criar_conta
end

Então("realizo o cadastro com sucesso") do
@geral.validar_texto
end
