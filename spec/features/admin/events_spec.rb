require 'rails_helper'

describe 'Events', type: :feature do
	before do
		@user = create :user, admin: true
		create_user_and_log_in @user
	end

 	scenario "affiche les evenements" do
		event = create :event, event: "la tarte a mamie"
    visit admin_events_path
    expect(page).to have_content 'la tarte a mamie'
  end

	scenario "creer un evenement" do
		visit admin_events_path
		page.find("#create-event").click
		expect {
			fill_in :event_event, with: "24H roller"
			fill_in :event_date, with: "2011/01/01"
			click_button "Enregistrer"
		}.to change {
			Event.count
	 	}.by(1)
		expect(Event.last.event).to eq "24H roller"
	end

	xscenario "supprime un évènement" do
		create :event
		visit admin_events_path
		expect {
			page.find("#remove-event").click
		}.to change {
			Event.count
	 	}.by(-1)
	end

	scenario "edit un évènement" do
		event = create :event, event: "Le tournois du dimanche"
		visit admin_events_path
		page.find("#edit-event").click
		expect{
			fill_in :event_event, width: "24h c'est partit"
			fill_in :event_date, width: "2017/01/01"
			click_button "Enregistrer"
		}.to change {
			expect(event.reload.event).to eq "24h c'est partit"
	 	}
	end

end