require 'rails_helper'

RSpec.describe "tea houses index page", type: :feature do 
  it "can see all tea houses names" do
    tea_house_1 = TeaHouse.create(name:               "Mei Leaf", 
                                  location:           "99-105 Camden High Street, London, NW1 7JN, UK", 
                                  restocked_on:       "2020-12-01 08:00:00", 
                                  hours_of_operation: "2020-12-01 08:00:00", 
                                  social_distancing:  true
                                  allows_dogs:        true)

  end
end