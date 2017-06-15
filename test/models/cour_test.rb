require 'test_helper'

class CourTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new(:username => 'michael',:email => 'test@example.com', :password => 'password', :password_confirmation => 'password')
    @user.save
    # This code is not idiomatically correct.
    @cours = Cour.new(content: "Lorem ipsum")
  end

  test "should be valid" do
    assert @cours.valid?
  end

  test "user id should be present" do
    
    assert_not @cours.valid?
  end

  test "content should be present" do
    @cours.content = "   "
    assert_not @cours.valid?
  end

  test "content should be at most 140 characters" do
    @cours.content = "a" * 141
    assert_not @cours.valid?
  end


end
