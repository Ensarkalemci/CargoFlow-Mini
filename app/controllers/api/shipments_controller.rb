class Api::ShipmentsController < ActionController::API

    def index
        shipments=Shipment.all
        render json: shipments
    end

    def show
        shipment=Shipment.find(params_id)
        render json: shipment
    end

    def create
        shipment=Shipment.new(params_shipment)

        if shipment.save
        render json: shipment, status: :created
        else 
        render json: shipment.errors.full_messages,status: :unprocessable_entity
        end

    end

    def update

        shipment=Shipment.find(params_id)

        if shipment.update(params_shipment)
        render json: shipment, status: :ok
       else
        render json: shipment.errors.full_messages,status: :unprocessable_entity
        end
        
    end

    def destroy 

        shipment=Shipment.destroy(params_id)
        render json: shipment

    end

    def track

        shipment=Shipment.find_by(tracking_number: params[:tracking_number])

        if shipment

        render json: shipment, status: :ok

        else

        render json: { error: "Kargo bulunamadi" }, status: :not_found

        end

    end

    private

    def params_shipment

    params.permit(:name , :weight , :volume , :origin , :destination, :status, :service_type_id)

    end

    def params_id

        params[:id]

    end

end







