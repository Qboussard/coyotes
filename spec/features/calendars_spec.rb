require 'rails_helper'

describe 'Calendars', type: :feature do
  scenario "affiche les prochains evenements" do
		calendar = create :calendar, event: "la tarte a mamie"
    visit calendars_path
    expect(page).to have_content 'la tarte a mamie'
  end
end