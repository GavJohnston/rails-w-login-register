class User
    attr_reader :name
    attr_accessor :address, :phone_number
        def initalize(name, address, phone_number)
            @name = name
            @address = address
            @phone_number = phone_number
        end
end