require 'test_helper'

class CountryGdpControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get country_gdp_index_url
    assert_response :success
  end

end
