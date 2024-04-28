require "test_helper"

class TripsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/trips.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Trip.count, data.length
  end

  test "create" do
    assert_difference "Trip.count", 1 do
      post "/trips.json", params: { user_id: 1, title: "Test Vacation", image_url: "test.jpeg", start_time: "2020-01-01", end_time: "2022-01-01" }
      assert_response 200
    end
  end

  test "show" do
    get "/trips/#{Trip.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "user_id", "title", "image_url", "start_time", "end_time", "created_at", "updated_at"], data.keys
  end
end
