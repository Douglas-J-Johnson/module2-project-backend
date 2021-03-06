class RidesController < ApplicationController
    def index
        @rides = Ride.all
        render json:@rides, include: ['route', 'ride_attendances', 'riders']
    end

    def show
        @ride = Ride.find(params[:id])
        render json:@ride, include: ['route', 'ride_attendances', 'riders']
    end

    def create
        ride = Ride.create(
            date_time: params[:date],
            description: params[:description],
            route_id: params[:route]
        )

        redirect_to ('http://localhost:3001/index.html')
    end

    def update
        byebug
        ride = Ride.find(params[:id])
        ride.update(date_time: params[:date],
                    description: params[:description],
                    route_id: params[:route_id]
                    )

        redirect_to("http://localhost:3001/rides/#{ride.id}")
    end
end
