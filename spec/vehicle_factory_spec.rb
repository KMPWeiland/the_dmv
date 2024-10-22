require './lib/vehicle'
require './lib/vehicle_factory'
require './lib/dmv_data_service'

RSpec.describe VehicleFactory do
    before(:each) do
      @factory = VehicleFactory.new
      @wa_ev_registrations = DmvDataService.new.wa_ev_registrations
    end

    describe '#create_vehicles' do
        it 'returns an array of Vehicle Objects' do
            vehicles = @factory.create_vehicles(@wa_ev_registrations)
            
            expect(vehicles).to be_a(Array)
        end

        it 'test that the first items in the vehicles array is a Vehicle object' do
        #aka tests that the first element is an instance of the Vehicle class
            vehicles = @factory.create_vehicles(@wa_ev_registrations)

            expect(vehicles.first).to be_an_instance_of(Vehicle)
        end
    end
end



    





#   describe '#initiatlize' do
#     it 'can initialize' do
#         expect(@factory).to be_an_instance_of(VehicleFactory)
#     end
#   end 

#   describe '#Vehicle objects' do
#     xit 'can initialize' do
#         expect(@factory.create_vehicles(@wa_ev_registrations)).to eq(Vehicle)
#     end
#   end 

# @factory.each do |vehicle|
#     expect(vehicle).to be_a(Vehicle)

    #THINK ABOUT THE THINGS THAT YOU DO CONTORL
    #AFTER YOU RUN THE METHOD, WHAT IS THE OUTPUT
        #ULTIMATELY IT'S AN ARRAY
        #EVERY OBJECT IN THE ARRAY SHOULD BE A VEHICLE OBJECT
        #for your test, test that the first object in the array is a vehicle object