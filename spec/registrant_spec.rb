require 'spec_helper'

describe Registrant do
    before(:each) do
        #creates a few registrant instances
        @registrant_1 = Registrant.new('Bruce', 18, true)
        @registrant_2 = Registrant.new('Penny', 15)
    end

    describe '#initiatlize' do
      it 'can initiatlize' do
        expect(@registrant_1.name).to eq('Bruce')
        expect(@registrant_1.age).to eq(18)
        expect(@registrant_1.permit).to eq(true)
        expect(@registrant_1.license_data).to eq({:written=>false, :license=>false, :renewed=>false})
        expect(@registrant_2.name).to eq('Penny')
        expect(@registrant_2.age).to eq(15)
        expect(@registrant_2.permit).to eq(false)
        expect(@registrant_1.license_data).to eq({:written=>false, :license=>false, :renewed=>false})
      end

    end

    # describe '#earn_permit?' do
    #   it 'can determine if a registrant earned their permit' do
    #     @registrant_2.earn_permit
    #    expect(@registrant_2.earn_permit).to eq(true)
    #   end
    # end

end


# expect(@facility).to be_an_instance_of(Facility)
# expect(@facility.name).to eq('DMV Tremont Branch')
# expect(@facility.address).to eq('2855 Tremont Place Suite 118 Denver CO 80205')
# expect(@facility.phone).to eq('(720) 865-4600')
# expect(@facility.services).to eq([])