class UsersController < ApplicationController
  
  def index
    @users = User.where(mechanic: true)

    # the `geocoded` scope filters only users with coordinates (latitude & longitude)
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "map_box", locals: { user: user })
      }
    end
  end
end
