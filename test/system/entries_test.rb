require "application_system_test_case"

class EntriesTest < ApplicationSystemTestCase
  setup do
    @entry = entries(:one)
  end

  test "visiting the index" do
    visit entries_url
    assert_selector "h1", text: "Entries"
  end

  test "should create entry" do
    visit entries_url
    click_on "New entry"

    fill_in "Client acronym", with: @entry.client_acronym
    fill_in "Cost", with: @entry.cost
    fill_in "Install date", with: @entry.install_date
    fill_in "Invoice date", with: @entry.invoice_date
    fill_in "Item", with: @entry.item
    fill_in "Notes", with: @entry.notes
    fill_in "Number of items", with: @entry.number_of_items
    fill_in "Po date", with: @entry.po_date
    fill_in "Po number", with: @entry.po_number
    fill_in "Serial number", with: @entry.serial_number
    click_on "Create Entry"

    assert_text "Entry was successfully created"
    click_on "Back"
  end

  test "should update Entry" do
    visit entry_url(@entry)
    click_on "Edit this entry", match: :first

    fill_in "Client acronym", with: @entry.client_acronym
    fill_in "Cost", with: @entry.cost
    fill_in "Install date", with: @entry.install_date
    fill_in "Invoice date", with: @entry.invoice_date
    fill_in "Item", with: @entry.item
    fill_in "Notes", with: @entry.notes
    fill_in "Number of items", with: @entry.number_of_items
    fill_in "Po date", with: @entry.po_date
    fill_in "Po number", with: @entry.po_number
    fill_in "Serial number", with: @entry.serial_number
    click_on "Update Entry"

    assert_text "Entry was successfully updated"
    click_on "Back"
  end

  test "should destroy Entry" do
    visit entry_url(@entry)
    click_on "Destroy this entry", match: :first

    assert_text "Entry was successfully destroyed"
  end
end
