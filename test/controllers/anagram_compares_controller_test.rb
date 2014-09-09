require 'test_helper'

class AnagramComparesControllerTest < ActionController::TestCase
  setup do
    @anagram_compare = anagram_compares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anagram_compares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anagram_compare" do
    assert_difference('AnagramCompare.count') do
      post :create, anagram_compare: { original: @anagram_compare.original, wannabe: @anagram_compare.wannabe }
    end

    assert_redirected_to anagram_compare_path(assigns(:anagram_compare))
  end

  test "should show anagram_compare" do
    get :show, id: @anagram_compare
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anagram_compare
    assert_response :success
  end

  test "should update anagram_compare" do
    patch :update, id: @anagram_compare, anagram_compare: { original: @anagram_compare.original, wannabe: @anagram_compare.wannabe }
    assert_redirected_to anagram_compare_path(assigns(:anagram_compare))
  end

  test "should destroy anagram_compare" do
    assert_difference('AnagramCompare.count', -1) do
      delete :destroy, id: @anagram_compare
    end

    assert_redirected_to anagram_compares_path
  end
end
