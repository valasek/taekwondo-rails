require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Taekwondo"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Taekwondo"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Taekwondo"
  end
end
