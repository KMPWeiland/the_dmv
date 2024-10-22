class Facility
  attr_reader :name, 
              :address, 
              :phone, 
              :services,
              :registered_vehicles,
              :collected_fees

  def initialize(facility_details,registered_vehicles = [])
    @name = facility_details[:name] 
    @address = facility_details[:address]
    @phone = facility_details[:phone]
    @services = []
    @registered_vehicles = []
    @collected_fees = 0
  end

  def add_service(service)
    @services << service
  end

  def register_vehicle(vehicle)
    if vehicle.plate_type == :antique
      @collected_fees += 25
    elsif vehicle.plate_type == :ev
      @collected_fees += 200
    else
      @collected_fees += 100
    end
      @registered_vehicles << vehicle
  end

  def administer_written_test(registrant)
    if @services.include?('Written Test') && 
      registrant.age >= 16 && 
      registrant.permit?

      registrant.license_data[:written] = true
      true
    else
      false
    end
  end

  def administer_road_test(registrant)
    if @services.include?('Road Test') && 
      registrant.age >= 16 && 
      registrant.license_data[:written] == true

      registrant.license_data[:license] = true
      true
    else
      false
    end
  end

  def renew_drivers_license(registrant)
    if @services.include?('Renew License') && 
      registrant.license_data[:license] == true

      registrant.license_data[:renewed] = true
      true
    else
      false
    end
  end

end

# methods to create based on interaction pattern:
#