#language: pt
#utf-8

@Smoke
Funcionalidade: Cadastrar Funcionario
	Eu como usuario do site
	Quero cadastrar um funcionário

@Cadastro_Funcionario
Cenario: Cadastrar Funcionario pela página web
	Dado que esteja na página de cadastro do site
	Quando cadastra o funcionario
	Entao exibe a página com os dados do funcionario cadastrado
