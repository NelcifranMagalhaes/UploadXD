require 'rails_helper'

RSpec.describe ManagersController, type: :controller do

	scenario "Rota de novo arquivo" do
		get :new
	 	#file = FileTxtUploader.new(Rails.root.join("spec/fixtures/dados.txt"))
	    expect(response).to render_template(:new)
	end
end
