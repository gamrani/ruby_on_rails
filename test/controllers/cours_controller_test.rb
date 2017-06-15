require 'test_helper'

class CoursControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def setup
    @cours = cours(:orange)
  end

  test "should redirect create when not logged in" do
    assert_no_difference 'cours.count' do
      post cours_path, params: { cours: { content: "Lorem ipsum" } }
    end
    assert_redirected_to login_path
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'cours.count' do
      delete micropost_path(@cours)
    end
    assert_redirected_to login_path
  end
end
