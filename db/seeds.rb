# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(name: "Krys", email: "krys@example.com", password: "password", image_url: "https://avatars.githubusercontent.com/u/83841519?v=4")

Trip.create!(user_id: 1, title: "PDX Staycation", image_url: "https://i.ebayimg.com/images/g/KIIAAOSwPVpct5w9/s-l1600.jpg", start_time: "2024-05-17", end_time: "2024-05-26")
Trip.create!(user_id: 1, title: "Japan Trip", image_url: "https://img.freepik.com/premium-vector/japan-logo-vector-illustrations-suitable-your-logo_509354-327.jpg", start_time: "2025-02-01", end_time: "2024-03-15")

Place.create!(trip_id: 1, address: "3765 N Mississippi Ave, Portland, OR", name: "Broder Nord", description: "This Scandanavian-style breakfast will be the perfect place to start our vacation.", image_url: "https://s3-media0.fl.yelpcdn.com/bphoto/ndfeqLRGNR48vZ7yQrKv-Q/348s.jpg", start_time: "2024-05-19", end_time: "2024-05-19")

Place.create!(trip_id: 1, address: "SW Marquam St, Portland, OR 97201", name: "Marquam Park", description: "Marquam Park is a forest buried in the city. It'll be a beautiful little hike without the long-distance travel.", image_url: "https://oregonisforadventure.com/wp-content/uploads/2022/05/dense-forest-marquam-nature-trail-1024x683.jpg", start_time: "2024-05-19", end_time: "2024-05-19")

Place.create!(trip_id: 1, address: "4090 N Williams Ave, Portland, OR 97227", name: "XLB", description: "After a hike and seeing some city sights, it'll be time for lunch. XLB is a Portland staple for Chinese comfort food.", image_url: "https://img.cdn4dd.com/cdn-cgi/image/fit=contain,width=1200,height=672,format=auto/https://doordash-static.s3.amazonaws.com/media/store/header/136915.jpg", start_time: "2024-05-19", end_time: "2024-05-19")
