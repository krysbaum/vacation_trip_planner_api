require "test_helper"

class TripsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/trips.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Trip.count, data.length
  end

  test "create" do
    @user = User.create(name: "Test", email: "test@test.com", password: "password", image_url: "test.jpeg")

    assert_difference "Trip.count", 1 do
      post "/trips.json", params: { user_id: @user.id, title: "Test Vacation", image_url: "test.jpeg", start_time: "2020-01-01", end_time: "2022-01-01" }
      assert_response 200
    end
  end

  test "show" do
    get "/trips/#{Trip.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "user_id", "title", "image_url", "start_time", "end_time", "created_at", "updated_at"], data.keys
  end

  test "update" do
    trip = Trip.first
    patch "/trips/#{trip.id}.json", params: { title: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["title"]
  end

  test "destroy" do
    assert_difference "Trip.count", -1 do
      delete "/trips/#{Trip.first.id}.json"
      assert_response 200
    end
  end
end
