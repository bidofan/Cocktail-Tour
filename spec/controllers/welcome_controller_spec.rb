require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
	describe "GET#welcome" do
		describe 'should render template welcome' do
			before { get :welcome}
			it {is_expected.to render_template(:welcome)}
		end
	end
end
