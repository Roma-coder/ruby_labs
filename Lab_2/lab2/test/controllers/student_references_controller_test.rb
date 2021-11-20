require 'test_helper'

class StudentReferencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_reference = student_references(:one)
  end

  test "should get index" do
    get student_references_url
    assert_response :success
  end

  test "should get new" do
    get new_student_reference_url
    assert_response :success
  end

  test "should create student_reference" do
    assert_difference('StudentReference.count') do
      post student_references_url, params: { student_reference: {  } }
    end

    assert_redirected_to student_reference_url(StudentReference.last)
  end

  test "should show student_reference" do
    get student_reference_url(@student_reference)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_reference_url(@student_reference)
    assert_response :success
  end

  test "should update student_reference" do
    patch student_reference_url(@student_reference), params: { student_reference: {  } }
    assert_redirected_to student_reference_url(@student_reference)
  end

  test "should destroy student_reference" do
    assert_difference('StudentReference.count', -1) do
      delete student_reference_url(@student_reference)
    end

    assert_redirected_to student_references_url
  end
end
