require "application_system_test_case"

class StudentClassesTest < ApplicationSystemTestCase
  setup do
    @student_class = student_classes(:one)
  end

  test "visiting the index" do
    visit student_classes_url
    assert_selector "h1", text: "Student Classes"
  end

  test "creating a Student class" do
    visit student_classes_url
    click_on "New Student Class"

    fill_in "Classname", with: @student_class.className
    click_on "Create Student class"

    assert_text "Student class was successfully created"
    click_on "Back"
  end

  test "updating a Student class" do
    visit student_classes_url
    click_on "Edit", match: :first

    fill_in "Classname", with: @student_class.className
    click_on "Update Student class"

    assert_text "Student class was successfully updated"
    click_on "Back"
  end

  test "destroying a Student class" do
    visit student_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student class was successfully destroyed"
  end
end
