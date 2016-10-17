require 'test_helper'

class PhrasesControllerTest < ActionDispatch::IntegrationTest
  test "should get scaffold" do
    get phrases_scaffold_url
    assert_response :success
  end

end
