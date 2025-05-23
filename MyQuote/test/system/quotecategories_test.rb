require "application_system_test_case"

class QuotecategoriesTest < ApplicationSystemTestCase
  setup do
    @quotecategory = quotecategories(:one)
  end

  test "visiting the index" do
    visit quotecategories_url
    assert_selector "h1", text: "Quotecategories"
  end

  test "should create quotecategory" do
    visit quotecategories_url
    click_on "New quotecategory"

    fill_in "Cat quantity", with: @quotecategory.cat_quantity
    fill_in "Category", with: @quotecategory.category_id
    fill_in "Quote", with: @quotecategory.quote_id
    click_on "Create Quotecategory"

    assert_text "Quotecategory was successfully created"
    click_on "Back"
  end

  test "should update Quotecategory" do
    visit quotecategory_url(@quotecategory)
    click_on "Edit this quotecategory", match: :first

    fill_in "Cat quantity", with: @quotecategory.cat_quantity
    fill_in "Category", with: @quotecategory.category_id
    fill_in "Quote", with: @quotecategory.quote_id
    click_on "Update Quotecategory"

    assert_text "Quotecategory was successfully updated"
    click_on "Back"
  end

  test "should destroy Quotecategory" do
    visit quotecategory_url(@quotecategory)
    click_on "Destroy this quotecategory", match: :first

    assert_text "Quotecategory was successfully destroyed"
  end
end
