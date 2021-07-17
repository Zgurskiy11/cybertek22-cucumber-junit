Feature: Etsy search feature

  #TC#24: Etsy Search Functionality Title Verification
  #1. User is on https://www.etsy.com
  #2. User types Wooden Spoon in the search box
  #3. User clicks search button
  #4. User sees Wooden Spoon is in the title
  #Note: Follow POM


  Scenario: Etsy default title verification
    #lets do default first, then for wooden spoon
    Given user is on the Etsy landing page
    #Etsy title very long, so do like this, without parametrization
    #Expected title: Etsy - Shop for handmade, vintage, custom, and unique gifts for everyone
    Then user should see Etsy title as expected


    Scenario: Etsy Search Functionality Title Verification
      Given user is on the Etsy landing page
      When user types Wooden Spoon in the search bar
      And user clicks to search button
      Then user sees title is Wooden spoon | Etsy



