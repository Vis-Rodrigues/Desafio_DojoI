Dado(/^que tenha se logado na aplicação$/) do
  	visit 'http://opensource.demo.orangehrmlive.com/'

	#Login
	fill_in('txtUsername', :with => 'Admin')
	fill_in('txtPassword', :with => 'admin')		
	click_button('btnLogin')
end

Dado(/^que esteja na página de alteração de cadastro do funcionário$/) do
	click_link('menu_pim_viewPimModule')
	click_link('menu_pim_viewEmployeeList')

	find(:xpath, '//*[@id="resultTable"]/tbody/tr[1]/td[2]/a').click
end

Quando(/^altera o funcionario$/) do
    #Habilitar os campos para edição
  	click_button('btnSave')

  	fill_in('personal[txtEmpFirstName]', :with => 'Etelvania')
	fill_in('personal[txtEmpMiddleName]', :with => find(:id, 'personal_txtEmployeeId').value)
	fill_in('personal[txtEmpLastName]', :with => 'Fernandes')	
	fill_in('personal[txtLicenNo]', :with => '1234567891')
	fill_in('personal[txtLicExpDate]', :with => '2017-04-26')
	choose('personal_optGender_1')
	select('Single', :from => 'personal[cmbMarital]')
	select('Australian', :from => 'personal[cmbNation]')
	fill_in('personal[DOB]', :with => '1996-03-06')
		

	#Salvar alteração
	click_button('btnSave')

end

Entao(/^exibe a mensagem de sucesso: "([^"]*)"$/) do |arg1|
	assert_text(arg1)
end