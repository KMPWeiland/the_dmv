require 'spec_helper'

describe Registrant do
    before(:each) do
        #creates a few registrant instances
        @registrant_1 = Registrant.new('Bruce', 18, true)
        @registrant_2 = Registrant.new('Penny', 16)
        @registrant_3 = Registrant.new('Tucker', 15)
    end

    describe '#initiatlize' do
      it 'can initiatlize' do
        expect(@registrant_1.name).to eq('Bruce')
        expect(@registrant_1.age).to eq(18)
        expect(@registrant_1.permit).to eq(true)
        expect(@registrant_1.license_data).to eq({:written=>false, :license=>false, :renewed=>false})
        expect(@registrant_2.name).to eq('Penny')
        expect(@registrant_2.age).to eq(16)
        expect(@registrant_2.permit).to eq(false)
        expect(@registrant_2.license_data).to eq({:written=>false, :license=>false, :renewed=>false})
        expect(@registrant_3.name).to eq('Tucker')
        expect(@registrant_3.age).to eq(15)
        expect(@registrant_3.permit).to eq(false)
        expect(@registrant_3.license_data).to eq({:written=>false, :license=>false, :renewed=>false})
      end

    end

    describe '#earn_permit?' do
      it 'can determine if a registrant earned their permit' do
       @registrant_2.earn_permit
       expect(@registrant_2.permit?).to eq(true)
      end
    end

    # describe "#updates to license data" do
    #   it 'updates written test key to true if registrant has taken the written test' do
    #     expect(@registrant_1.license_data[:written]).to eq(false)

    #     #call the method
    #     @registrant_1.facility_test_check(@facility_1, @registrant_1)


    #     expect(@registrant_1.license_data[:written]).to eq(true)
    #   end
    # end

      # @facility_1.administer_written_test(@registrant)


    # describe "#updates to license data" do
    #   it 'updates written test key to true if registrant has taken the written test' do
    #   # @facility_1.administer_written_test(@registrant)
    #    expect(@registrant_1.license_data[:written]).to eq(false)
    # #    @registrant_1.update_license_data(:written, true)
    # #    expect(@registrant_1.license_data[:written]).to eq(true)
    #   end
    # end

    # describe "#updates to license data" do
    # it 'updates written test key to true if registrant has taken the written test' do
    # # @facility_1.administer_written_test(@registrant)
    #  expect(@registrant_1.license_data[:written]).to eq(false)
    # end

end


# expect(@facility).to be_an_instance_of(Facility)
# expect(@facility.name).to eq('DMV Tremont Branch')
# expect(@facility.address).to eq('2855 Tremont Place Suite 118 Denver CO 80205')
# expect(@facility.phone).to eq('(720) 865-4600')
# expect(@facility.services).to eq([])