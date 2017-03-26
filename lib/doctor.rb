class Doctor
  attr_reader :name, :appointments
  attr_accessor :patients

  def initialize(doctor_name)
    @name = doctor_name
    @appointments = []
    @patients = []
  end

  def add_appointment(new_appointment)
    self.appointments.push(new_appointment)
    new_appointment.doctor = self
  end    
end