require 'rails_helper'

describe 'Events', type: :feature do
  scenario "affiche les prochains evenements" do
		event = create :event, event: "la tarte a mamie"
    visit events_path
    expect(page).to have_content 'la tarte a mamie'
  end
end