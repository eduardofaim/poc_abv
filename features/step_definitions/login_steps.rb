Dado("que eu esteja na tela do aplicativo ABV") do
	@geral = Cadastro.new
	@geral.validar_texto
end

Quando("efetuar o login no ABV") do
	@login = Login.new
	@login.preencher_cpf_login(MASSA['usuarios']['cpf'])
	@login.preencher_senha_login(MASSA['usuarios']['senha'])
	@login.clicar_btn_login
end

Então("o login e realizado com sucesso") do
	puts "teste"
end
