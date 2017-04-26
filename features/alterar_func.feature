#language: pt
#utf-8

@Smoke
Funcionalidade: Alterar cadastro Funcionario
	Eu como usuario do site
	Quero alterar um funcionário

@Alteracao_Funcionario
Cenario: Alterar dados do funcionario
	Dado que tenha se logado na aplicação
	E que esteja na página de alteração de cadastro do funcionário
	Quando altera o funcionario
	Entao exibe a mensagem de sucesso: "Successfully Saved"
