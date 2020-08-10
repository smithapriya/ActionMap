Feature: display representatives profile upon searching address

  As a user
  So that I can enter a representative candidate address in the search bar
  I want to see the corresponding representative

Background: representative data has been added to database

Scenario: Search for representative address in search field
  Given I am on the representatives page
  When I fill in "address" with "Idaho"
  And I press "Search"
  Then I should see "Brad Little"
  And I should see "Donald J. Trump"
  When I follow "Donald J. Trump"
  Then I should see "Donald J. Trump"
  Then I should see "Republican Party"
  And I should see "Washington"
  And I should see "(202) 456-1111"
  And I should not see "James E. Risch"

Scenario: representative not found
  Given I am on the representatives page
  When I fill in "address" with "error"
  And I press "Search"
  Then I should be on the representatives page
  And I should see "Invalid"

Scenario: Access representative profile from news_page
  Given I am on the news_items page
  When I press "representative name"
  Then I should see "name"
  And I should see "some other detail of the representative"
  And I should not see "another representative"
