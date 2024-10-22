class DmvDirectory
  
     def create_facilities(dmv_directory_array)
        dmv_directory_array.map do |dmv_directory_hash|
            Facility.new({
                name: dmv_directory_hash[:"dmv_office"] || dmv_directory_hash[:"office_name"] || dmv_directory_hash[:"name"], 
                address: dmv_directory_hash[:"address_li"] || dmv_directory_hash[:"street_address_line_1"] || dmv_directory_hash[:"address1"], 
                #how to to combine addresses on multiples lines from dataset?!
                phone: dmv_directory_hash[:phone] || dmv_directory_hash[:"public_phone_number"], 
                services: dmv_directory_hash[:services_p] || "Unknown" 
                # registered_vehicles: [],
                # collected_fees: 0
            })
        end
    end
end