require 'rails_helper'

RSpec.feature "Pagina inicial", type: :feature do
	scenario 'A pagina inicial' do
		visit('/')
		expect(page).to have_content("Faça o upload do arquivo")   
	end
	 
	scenario 'Possui o field de arquivo ' do
		visit('/')
		expect(page).to have_css("input",count: 1)
	end
		

	scenario "Posso fazer upload" do
		visit('/')
	 	#file = FileTxtUploader.new(Rails.root.join("spec/fixtures/dados.txt"))
	    attach_file "manager[file_txt]",Rails.root.join("spec/fixtures/dados.txt")
	    click_on('submit')

	end


end
