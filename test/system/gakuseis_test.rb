require "application_system_test_case"

class GakuseisTest < ApplicationSystemTestCase
  setup do
    @gakusei = gakuseis(:one)
  end

  test "visiting the index" do
    visit gakuseis_url
    assert_selector "h1", text: "Gakuseis"
  end

  test "creating a Gakusei" do
    visit gakuseis_url
    click_on "New Gakusei"

    fill_in "Age", with: @gakusei.age
    fill_in "Gakusei no", with: @gakusei.gakusei_no
    fill_in "Name", with: @gakusei.name
    click_on "Create Gakusei"

    assert_text "Gakusei was successfully created"
    click_on "Back"
  end

  test "updating a Gakusei" do
    visit gakuseis_url
    click_on "Edit", match: :first

    fill_in "Age", with: @gakusei.age
    fill_in "Gakusei no", with: @gakusei.gakusei_no
    fill_in "Name", with: @gakusei.name
    click_on "Update Gakusei"

    assert_text "Gakusei was successfully updated"
    click_on "Back"
  end

  test "destroying a Gakusei" do
    visit gakuseis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gakusei was successfully destroyed"
  end
end
