require 'rails_helper'

describe 'dashboard', type: :feature do
	before do
		@user = create :user, admin: true
		create_user_and_log_in @user
	end

 	scenario "dashboard ready" do
    visit admin_url
    expect(page.status_code).to eq 200
  end

end