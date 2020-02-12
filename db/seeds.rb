Rider.destroy_all
Route.destroy_all
Motorcycle.destroy_all
Ride.destroy_all
Photo.destroy_all
RideAttendance.destroy_all

mike = Rider.create(username: "MN", first_name: "Mike", last_name: "Newman")
doug = Rider.create(username: "DJ", first_name: "Doug", last_name: "Johnson")

route1 = Route.create(name: "Cruiser Ride", description: "Go around the world")
route2 = Route.create(name: "Twisties", description: "Go a different way")

mike_moto1 = Motorcycle.create(make: "Honda", model: "Goldwing", year: "2000", rider_id: mike.id)
mike_moto2 = Motorcycle.create(make: "Kawasaki", model: "Vulcan", year: "2012", rider_id: mike.id)
doug_moto1 = Motorcycle.create(make: "BMW", model: "RS 1200", year: "2017", rider_id: doug.id)

ride1 = Ride.create(date_time: "6/1/2021", description: "Fun ride for everybody", route_id:route1.id)
ride2 = Ride.create(date_time: "7/1/2021", description: "Intense ride", route_id:route2.id)
ride3 = Ride.create(date_time: "1/1/2019", description: "Nice ride", route_id: route1.id)

photo1 = Photo.create(image_path: "", ride_id: ride1.id)
photo2 = Photo.create(image_path: "", ride_id: ride1.id)
photo3 = Photo.create(image_path: "", ride_id: ride1.id)
photo4 = Photo.create(image_path: "", ride_id: ride1.id)
photo5 = Photo.create(image_path: "", ride_id: ride1.id)
photo6 = Photo.create(image_path: "", ride_id: ride2.id)
photo7 = Photo.create(image_path: "", ride_id: ride2.id)
photo8 = Photo.create(image_path: "", ride_id: ride2.id)
photo9 = Photo.create(image_path: "", ride_id: ride2.id)

RideAttendance.create(rider_id: mike.id, ride_id: ride1.id, motorcycle_id: mike_moto1.id)
RideAttendance.create(rider_id: doug.id, ride_id: ride1.id, motorcycle_id: doug_moto1.id)
RideAttendance.create(rider_id: mike.id, ride_id: ride2.id, motorcycle_id: mike_moto2.id)