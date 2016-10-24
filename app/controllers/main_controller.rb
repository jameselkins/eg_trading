class MainController < ApplicationController
  def home
    @markers_hash = Gmaps4rails.build_markers(Produce.all) do |produce, marker|
      marker.lat produce.latitude
      marker.lng produce.longitude
      marker.infowindow produce.headline
    end

  end
end