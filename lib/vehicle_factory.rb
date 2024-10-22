class VehicleFactory
    attr_reader :vehicle_data_array

    # def initialize(vehicle_data_array)
    #     @vehicle_data_array = vehicle_data 
    # end

    def create_vehicles(vehicle_data_array)
        vehicle_data_array.map do |vehicle_hash|
            Vehicle.new({
                engine: vehicle_hash[:engine], 
                make: vehicle_hash[:make], 
                model: vehicle_hash[:model], 
                vin: vehicle_hash[:vin_1_10], 
                year: vehicle_hash[:year]
            })
        end
    end
end

 
    # @electric_vehicle_type = vehicle_data[:electric_vehicle_type]
    # @vin_1_10 = vehicle_data[:vin_1_10]
    # @dol_vehicle_id = vehicle_data[:make]
    # @model_year = vehicle_data[:model_year]
    # @make = vehicle_data[:make]
    # @model = vehicle_data[:model]