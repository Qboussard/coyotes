require 'rails_helper'

describe 'dashboard', type: :feature do
	before do
		@user = create :user, admin: true
		create_user_and_log_in @user
	end

 	xscenario "dashboard ready" do
    visit admin_dashboard_index_path
    expect(page.status).to eq 200
  end

end