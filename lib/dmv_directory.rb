class DmvDirectory
    # attr_reader :vehicle_data_array,
    #             :plate_type,
    #             :registration_date

     def create_facilities(dmv_directory_array)
        dmv_directory_array.map do |dmv_directory_hash|
            Facility.new({
                name: dmv_directory_hash[:dmv_office], 
                address: dmv_directory_hash[:address_li], #how to to combine addresses in dataset?!
                phone: dmv_directory_hash[:phone], 
                services: dmv_directory_hash[:services_p], 
                registered_vehicles: [],
                collected_fees: 0
            })
        end
    end
end