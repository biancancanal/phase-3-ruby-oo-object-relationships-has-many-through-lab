class Doctor
    attr_accessor :name

    @@all = [] 

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all 
        @@all    
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end 

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def patients 
        appointments.map {|doctor| doctor.patient}
        #also written as:  songs.map(&:genre)
    end 
end 
