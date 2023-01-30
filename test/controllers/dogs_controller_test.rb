require "test_helper"

class DogsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
    get "/dogs.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Dog.count, data.length
  end
end
