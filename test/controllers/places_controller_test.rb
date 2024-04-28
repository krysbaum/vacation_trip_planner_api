require "test_helper"

class PlacesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/places.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Place.count, data.length
  end

  test "create" do
    @user = User.create(name: "Test", email: "test@test.com", password: "password", image_url: "test.jpeg")

    @trip = Trip.create(user_id: @user.id, title: "TEST", image_url: "test.jpeg", start_time: "2024-01-01", end_time: "2024-02-01")

    assert_difference "Place.count", 1 do
      post "/places.json", params: { trip_id: @trip.id, address: "101 test address", name: "Test Restaurant", description: "this is a test.", image_url: "test.jpeg", start_time: "2024-01-01", end_time: "2024-02-01" }
      assert_response 200
    end
  end

  test "show" do
    get "/places/#{Place.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "trip_id", "address", "name", "description", "image_url", "start_time", "end_time", "created_at", "updated_at"], data.keys
  end

  test "update" do
    place = Place.first
    patch "/places/#{place.id}.json", params: { address: "Updated address" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated address", data["address"]
  end

  test "destroy" do
    assert_difference "Place.count", -1 do
      delete "/places/#{Place.first.id}.json"
      assert_response 200
    end
  end
end
