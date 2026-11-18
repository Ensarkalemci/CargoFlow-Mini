class Api::ServiceTypesController < ApplicationController

    def index

        service_types=ServiceType.all
        render json: service_types
    end

    def show

        service_type=ServiceType.find(params[:id])
        render json: service_type
    end
end



