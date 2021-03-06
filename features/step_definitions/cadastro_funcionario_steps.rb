	Dado(/^que esteja na página de cadastro do site$/) do
		visit 'http://opensource.demo.orangehrmlive.com/'

		#Login
		fill_in('txtUsername', :with => 'Admin')
		fill_in('txtPassword', :with => 'admin')		
		click_button('btnLogin')

		#Acessar página de cadastro
		click_link('menu_pim_viewPimModule')
		click_link('menu_pim_addEmployee')

	end 

	Quando(/^cadastra o funcionario$/) do
		
		fill_in('firstName', :with => 'Vitórinha')
		id = find(:id, 'employeeId').value
		fill_in('middleName', :with => id)
		fill_in('lastName', :with => 'Oliveira')		

		#Dados de login
		check('chkLogin')

		fill_in('user_name', :with => 'Vitorinha' + id)
		fill_in('user_password', :with => 'Abcdef@12')
		fill_in('re_password', :with => 'Abcdef@12')	
		click_button('btnSave')

	end

	Entao(/^exibe a página com os dados do funcionario cadastrado$/) do
		assert_text('Personal Details')
	end
