class Flight

    attr_reader :passengers

    def initialize(num, cap)
        @flight_number = num
        @capacity = cap
        @passengers = []
    end

    def full?
        if passengers.length == @capacity
            return true
        elsif
            passengers.length < @capacity
            return false
        end 
    end 

    def board_passenger(passenger)
        if passenger.has_flight?(@flight_number) && !self.full?    
            @passengers << passenger 
        end 
    end

    def list_passengers
        @passengers.map {|passenger| passenger.name }
    end

    def [](index)
        @passengers[index]
    end

    def <<(passenger)
        self.board_passenger(passenger)
    end
        
end