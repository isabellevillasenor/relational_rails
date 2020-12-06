require 'rails_helper'

RSpec.describe "tea houses index page", type: :feature do
  it "can see all tea houses names" do
    tea_house_1 = TeaHouse.create(name:               "Mei Leaf",
                                  location:           "99-105 Camden High Street, London, NW1 7JN, UK",
                                  restocked_on:       "2020-12-01 08:00:00",
                                  opening_date:       "2020-12-01 08:00:00",
                                  social_distancing:  true,
                                  allows_dogs:        true
                                )
    tea_house_2 = TeaHouse.create(name:               "Tea Drunk",
                                  location:           "123 E 7th St, New York, NY 10009",
                                  restocked_on:       "2020-10-11 09:00:00",
                                  opening_date:       "2010-02-01 06:00:00",
                                  social_distancing:  true,
                                  allows_dogs:        false
                                )
    
  end
end
