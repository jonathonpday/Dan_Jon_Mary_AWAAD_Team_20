require "application_system_test_case"

class YearsTest < ApplicationSystemTestCase
  setup do
    @year = years(:one)
  end

  test "visiting the index" do
    visit years_url
    assert_selector "h1", text: "Years"
  end

  test "creating a Year" do
    visit years_url
    click_on "New Year"

    fill_in "Yr2000", with: @year.YR2000
    fill_in "Yr2001", with: @year.YR2001
    fill_in "Yr2002", with: @year.YR2002
    fill_in "Yr2003", with: @year.YR2003
    fill_in "Yr2004", with: @year.YR2004
    fill_in "Yr2005", with: @year.YR2005
    fill_in "Yr2006", with: @year.YR2006
    fill_in "Yr2007", with: @year.YR2007
    fill_in "Yr2008", with: @year.YR2008
    fill_in "Yr2009", with: @year.YR2009
    fill_in "Yr2010", with: @year.YR2010
    fill_in "Yr2011", with: @year.YR2011
    fill_in "Yr2012", with: @year.YR2012
    fill_in "Yr2013", with: @year.YR2013
    fill_in "Yr2014", with: @year.YR2014
    fill_in "Yr2015", with: @year.YR2015
    fill_in "Yr2016", with: @year.YR2016
    fill_in "Yr2017", with: @year.YR2017
    fill_in "Yr2018", with: @year.YR2018
    fill_in "Yr2019", with: @year.YR2019
    fill_in "Country", with: @year.country_id
    click_on "Create Year"

    assert_text "Year was successfully created"
    click_on "Back"
  end

  test "updating a Year" do
    visit years_url
    click_on "Edit", match: :first

    fill_in "Yr2000", with: @year.YR2000
    fill_in "Yr2001", with: @year.YR2001
    fill_in "Yr2002", with: @year.YR2002
    fill_in "Yr2003", with: @year.YR2003
    fill_in "Yr2004", with: @year.YR2004
    fill_in "Yr2005", with: @year.YR2005
    fill_in "Yr2006", with: @year.YR2006
    fill_in "Yr2007", with: @year.YR2007
    fill_in "Yr2008", with: @year.YR2008
    fill_in "Yr2009", with: @year.YR2009
    fill_in "Yr2010", with: @year.YR2010
    fill_in "Yr2011", with: @year.YR2011
    fill_in "Yr2012", with: @year.YR2012
    fill_in "Yr2013", with: @year.YR2013
    fill_in "Yr2014", with: @year.YR2014
    fill_in "Yr2015", with: @year.YR2015
    fill_in "Yr2016", with: @year.YR2016
    fill_in "Yr2017", with: @year.YR2017
    fill_in "Yr2018", with: @year.YR2018
    fill_in "Yr2019", with: @year.YR2019
    fill_in "Country", with: @year.country_id
    click_on "Update Year"

    assert_text "Year was successfully updated"
    click_on "Back"
  end

  test "destroying a Year" do
    visit years_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Year was successfully destroyed"
  end
end
