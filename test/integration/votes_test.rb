require 'test_helper'

class VotesTest < ActionDispatch::IntegrationTest
  test "Event page shoes how many votes each movie has" do
  	january = events(:january)
  	alien = movies(:alien)
  	tron = movies(:tron)

  	visit event_path(january)

  	assert find("li", alien.title).has_content?("Votes: 2")
  	assert find("li", tron.title).has_content?("Votes: 1")
    end
  end