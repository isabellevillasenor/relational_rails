require 'rails_helper'

RSpec.describe "microbreweries create feature", type: :feature do 
  it "will be linked from microbreweries" do
    visit "/microbreweries"
    click_on "New Brewery"
  end

  it "will have a header" do
    visit "/microbreweries/new"
    expect(page).to have_content("What's your new brewery, mate:")
  end

  it "will have a submit button" do
    visit "/microbreweries/new"
    expect(page).to have_button("Submit")
  end
  
  it "will save a record" do
    visit "/microbreweries/new"
    fill_in 'Name', with: 'Tuatara'
    fill_in 'Location', with: '7 Sheffield Street, Paraparaumu 5032, New Zealand'
    fill_in 'License renewal', with: '2020-12-03'
    check 'Outdoor seating'
    check 'Social distancing'
    click_button "Submit"

    expect(current_path).to eq('/microbreweries')
    expect(page).to have_content("Tuatara")
  end

end