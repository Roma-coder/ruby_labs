require "application_system_test_case"

class StudentReferencesTest < ApplicationSystemTestCase
  setup do
    @student_reference = student_references(:one)
  end

  test "visiting the index" do
    visit student_references_url
    assert_selector "h1", text: "Student References"
  end

  test "creating a Student reference" do
    visit student_references_url
    click_on "New Student Reference"

    click_on "Create Student reference"

    assert_text "Student reference was successfully created"
    click_on "Back"
  end

  test "updating a Student reference" do
    visit student_references_url
    click_on "Edit", match: :first

    click_on "Update Student reference"

    assert_text "Student reference was successfully updated"
    click_on "Back"
  end

  test "destroying a Student reference" do
    visit student_references_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student reference was successfully destroyed"
  end
end
