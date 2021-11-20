require "application_system_test_case"

class StudentInfosTest < ApplicationSystemTestCase
  setup do
    @student_info = student_infos(:one)
  end

  test "visiting the index" do
    visit student_infos_url
    assert_selector "h1", text: "Student Infos"
  end

  test "creating a Student info" do
    visit student_infos_url
    click_on "New Student Info"

    fill_in "Address", with: @student_info.address
    fill_in "Phone", with: @student_info.phone
    click_on "Create Student info"

    assert_text "Student info was successfully created"
    click_on "Back"
  end

  test "updating a Student info" do
    visit student_infos_url
    click_on "Edit", match: :first

    fill_in "Address", with: @student_info.address
    fill_in "Phone", with: @student_info.phone
    click_on "Update Student info"

    assert_text "Student info was successfully updated"
    click_on "Back"
  end

  test "destroying a Student info" do
    visit student_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student info was successfully destroyed"
  end
end
