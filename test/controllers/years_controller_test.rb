require 'test_helper'

class YearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @year = years(:one)
  end

  test "should get index" do
    get years_url
    assert_response :success
  end

  test "should get new" do
    get new_year_url
    assert_response :success
  end

  test "should create year" do
    assert_difference('Year.count') do
      post years_url, params: { year: { YR2000: @year.YR2000, YR2001: @year.YR2001, YR2002: @year.YR2002, YR2003: @year.YR2003, YR2004: @year.YR2004, YR2005: @year.YR2005, YR2006: @year.YR2006, YR2007: @year.YR2007, YR2008: @year.YR2008, YR2009: @year.YR2009, YR2010: @year.YR2010, YR2011: @year.YR2011, YR2012: @year.YR2012, YR2013: @year.YR2013, YR2014: @year.YR2014, YR2015: @year.YR2015, YR2016: @year.YR2016, YR2017: @year.YR2017, YR2018: @year.YR2018, YR2019: @year.YR2019, country_id: @year.country_id } }
    end

    assert_redirected_to year_url(Year.last)
  end

  test "should show year" do
    get year_url(@year)
    assert_response :success
  end

  test "should get edit" do
    get edit_year_url(@year)
    assert_response :success
  end

  test "should update year" do
    patch year_url(@year), params: { year: { YR2000: @year.YR2000, YR2001: @year.YR2001, YR2002: @year.YR2002, YR2003: @year.YR2003, YR2004: @year.YR2004, YR2005: @year.YR2005, YR2006: @year.YR2006, YR2007: @year.YR2007, YR2008: @year.YR2008, YR2009: @year.YR2009, YR2010: @year.YR2010, YR2011: @year.YR2011, YR2012: @year.YR2012, YR2013: @year.YR2013, YR2014: @year.YR2014, YR2015: @year.YR2015, YR2016: @year.YR2016, YR2017: @year.YR2017, YR2018: @year.YR2018, YR2019: @year.YR2019, country_id: @year.country_id } }
    assert_redirected_to year_url(@year)
  end

  test "should destroy year" do
    assert_difference('Year.count', -1) do
      delete year_url(@year)
    end

    assert_redirected_to years_url
  end
end
