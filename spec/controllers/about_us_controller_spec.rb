require 'rails_helper'

RSpec.describe AboutUsController, type: :controller do
	describe 'GET #about_us' do
		context 'render about_us template' do
			before {get :about_us} 
			it {is_expected.to render_template :about_us}
		end
	end


end
