require "application_system_test_case"

class PansTest < ApplicationSystemTestCase
  setup do
    @pan = pans(:one)
  end

  test "visiting the index" do
    visit pans_url
    assert_selector "h1", text: "Pans"
  end

  test "creating a Pan" do
    visit pans_url
    click_on "New Pan"

    fill_in "Descption", with: @pan.descption
    fill_in "Name", with: @pan.name
    fill_in "Price", with: @pan.price
    click_on "Create Pan"

    assert_text "Pan was successfully created"
    click_on "Back"
  end

  test "updating a Pan" do
    visit pans_url
    click_on "Edit", match: :first

    fill_in "Descption", with: @pan.descption
    fill_in "Name", with: @pan.name
    fill_in "Price", with: @pan.price
    click_on "Update Pan"

    assert_text "Pan was successfully updated"
    click_on "Back"
  end

  test "destroying a Pan" do
    visit pans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pan was successfully destroyed"
  end
end
