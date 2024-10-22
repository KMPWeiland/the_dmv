class Registrant
    attr_reader :name,
                :age, 
                :permit,
                :license_data

    def initialize(name, age, permit = false)
        @name = name
        @age = age
        @permit = permit
        @license_data = {
            written: false, 
            license: false, 
            renewed: false
        }
        # @written = license_data[written]
        # @license = license_data[license]
        # @renewed = license_data[renewed]
    end

    def permit?
        @permit
    end

    def earn_permit #does have a side effect of flipping the boolean
        @permit = true
    end
   
    # def facility_test_check(facility, registrant)
    #     if facility.administer_written_test(registrant) == true
    #       registrant.license_data[:written] = true
    #     end
    # end
    # def update_license_data(key, value)
    #     if administer_written_test(registrant) == true
    #       @license_data[:written] = true
    #     end
    # end

end
        # def initialize(name, age, permit, license_data)
        #     @name =  name
        #     @age = age
        #     @permit = permit
        #     @license_data = {}
        # end

