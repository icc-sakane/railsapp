require "application_system_test_case"

class KimatusTest < ApplicationSystemTestCase
  setup do
    @kimatu = kimatus(:one)
  end

  test "visiting the index" do
    visit kimatus_url
    assert_selector "h1", text: "Kimatus"
  end

  test "creating a Kimatu" do
    visit kimatus_url
    click_on "New Kimatu"

    fill_in "Eigo", with: @kimatu.eigo
    fill_in "Gakusei", with: @kimatu.gakusei_id
    fill_in "Kbn", with: @kimatu.kbn
    fill_in "Kokugo", with: @kimatu.kokugo
    fill_in "Sugaku", with: @kimatu.sugaku
    click_on "Create Kimatu"

    assert_text "Kimatu was successfully created"
    click_on "Back"
  end

  test "updating a Kimatu" do
    visit kimatus_url
    click_on "Edit", match: :first

    fill_in "Eigo", with: @kimatu.eigo
    fill_in "Gakusei", with: @kimatu.gakusei_id
    fill_in "Kbn", with: @kimatu.kbn
    fill_in "Kokugo", with: @kimatu.kokugo
    fill_in "Sugaku", with: @kimatu.sugaku
    click_on "Update Kimatu"

    assert_text "Kimatu was successfully updated"
    click_on "Back"
  end

  test "destroying a Kimatu" do
    visit kimatus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kimatu was successfully destroyed"
  end
end
