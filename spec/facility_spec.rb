require 'spec_helper'

RSpec.describe Facility do
  before(:each) do
    # @facility = Facility.new({name: 'DMV Tremont Branch', address: '2855 Tremont Place Suite 118 Denver CO 80205', phone: '(720) 865-4600'})
    #creates a few Facility instances
    @facility_1 = Facility.new({name: 'DMV Tremont Branch', address: '2855 Tremont Place Suite 118 Denver CO 80205', phone: '(720) 865-4600'})
    @facility_2 = Facility.new({name: 'DMV Northeast Branch', address: '4685 Peoria Street Suite 101 Denver CO 80239', phone: '(720) 865-4600'})
    @cruz = Vehicle.new({vin: '123456789abcdefgh', year: 2012, make: 'Chevrolet', model: 'Cruz', engine: :ice} )
    @bolt = Vehicle.new({vin: '987654321abcdefgh', year: 2019, make: 'Chevrolet', model: 'Bolt', engine: :ev} )
    @camaro = Vehicle.new({vin: '1a2b3c4d5e6f', year: 1969, make: 'Chevrolet', model: 'Camaro', engine: :ice} )
    @registrant_1 = Registrant.new('Bruce', 18, true)
    @registrant_2 = Registrant.new('Penny', 16)
    @registrant_2 = Registrant.new('Tucker', 15)
  end
  
    describe '#initialize' do #these are class methods because we're calling it on the calls not a specific instance of the class (like in instance methods)
      it 'can initialize' do
        expect(@facility_1).to be_an_instance_of(Facility)
        expect(@facility_1.name).to eq('DMV Tremont Branch')
        expect(@facility_1.address).to eq('2855 Tremont Place Suite 118 Denver CO 80205')
        expect(@facility_1.phone).to eq('(720) 865-4600')
        expect(@facility_1.services).to eq([])
      end
    end

    describe 'instance method' do #instance method are called on SPECIFIC INSTANCES of a [facility] class
      describe '#add service' do # use the # symbol b/c i'm testing an instance method
        it 'can add available services' do
          # @facility_1.add_service('New Drivers License')
          # @facility_1.add_service('Renew Drivers License')
          @facility_1.add_service('Written Test')
          expect(@facility_1.services).to eq(['Written Test'])
        end
      end
    end

    describe '#registered vehicles' do
      it 'can return an empty array if no vehicles are registered' do
      expect(@facility_1.registered_vehicles).to eq([])
      expect(@facility_2.registered_vehicles).to eq([])
      end
    end
  

    describe '#register_vehicles' do
      it 'tracks registered vehicles at each facility / updates the registered vehicles array' do
        @facility_1.register_vehicle(@cruz)
        expect(@facility_1.registered_vehicles).to eq([@cruz])
        @facility_1.register_vehicle(@camaro)
        expect(@facility_1.registered_vehicles).to eq([@cruz, @camaro])
      end
        
      it 'accounts for collected fees' do
        @facility_1.register_vehicle(@cruz)
        expect(@facility_1.collected_fees).to eq(100)
        @facility_1.register_vehicle(@camaro)
        expect(@facility_1.collected_fees).to eq(125)
        @facility_1.register_vehicle(@bolt)
        expect(@facility_1.collected_fees).to eq(325)
        expect(@facility_2.collected_fees).to eq(0)
      end
    end

    describe '#written tests' do
      it 'tests the add_services method properly adds services to the @services array' do        
        @facility_1.add_service('Written Test') #HOW BEST TO ORGANIZE THIS REPEATED TEST SINCE THE BEFORE:EACH RESETS THE INSTANCES??????
        expect(@facility_1.services).to eq(['Written Test'])
      end
      
      it 'tracks if a written test was administered on an instance of the Registrant class' do
        expect(@facility_1.administer_written_test(@registrant_1)).to eq(false)
        @facility_1.add_service('Written Test')
        @facility_1.administer_written_test(@registrant_1)
        expect(@facility_1.administer_written_test(@registrant_1)).to eq(true) 
      end

      # it 'tests that a registrants license data is updated after a test is administered' do
      #   @facility_1.add_service('Written Test')
      #   @facility_1.administer_written_test(@registrant_1)
      #   expect(@registrant_1.administer_written_test(@registrant_1)).to eq(true) 
      end
    end
      
  end
      

