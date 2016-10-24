class ProducesController < ApplicationController
  def new

  end

  def create
    @produce = Produce.new(produce_params)
    @produce.save!

    redirect_to root_path
  end

  private

  def produce_params
    params.require(:produce)
      .permit(:on_property,
              :headline,
              :is_ripe,
              :is_growing,
              :description,
              :farm_address,
              :price,
              :latitude,
              :longitude,
              :price_measurement)
  end
end