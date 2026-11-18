class Api::TransportModesController < ApplicationController

    def index

        transport_modes=TransportMode.all
        render json: transport_modes
    end


    def show

        transport_mode=TransportMode.find(params[:id])
        render json: transport_mode
    end
end
