require 'rails_helper'

RSpec.describe "microbreweries show by id page", type: :feature do
  it "can see all information given per microbrewery id" do
    brewery_1 = Microbrewery.create(name:              "Tuatara", 
                                    location:          "7 Sheffield Street, Paraparaumu 5032, New Zealand", 
                                    license_renewal:   "2020-12-03", 
                                    outdoor_seating:   true, 
                                    social_distancing: false)
    
    visit "/microbreweries/#{brewery_1.id}"
  
    expect(page).to have_content(brewery_1.name)
    expect(page).to have_content(brewery_1.location)
    expect(page).to have_content(brewery_1.license_renewal)
    expect(page).to have_content(brewery_1.outdoor_seating)
    expect(page).to have_content(brewery_1.social_distancing)
  end
end