require 'rails_helper'

RSpec.describe "microbreweries index page", type: :feature do
  it "can see all microbreweries name" do
    brewery_1 = Microbrewery.create(name:              "Tuatara", 
                                    location:          "7 Sheffield Street, Paraparaumu 5032, New Zealand", 
                                    license_renewal:   "2020-12-03", 
                                    outdoor_seating:   true, 
                                    social_distancing: false)
    brewery_2 = Microbrewery.create(name:              "Parrot Dog", 
                                    location:          "60 - 66 Kingsford Smith Street, Lyall Bay, Wellington, 6022 New Zealand", 
                                    license_renewal:   "2021-01-03", 
                                    outdoor_seating:   true, 
                                    social_distancing: false)
    

    visit "/microbreweries"

    expect(page).to have_content(brewery_1.name)
    expect(page).to have_content(brewery_2.name)
  end

end