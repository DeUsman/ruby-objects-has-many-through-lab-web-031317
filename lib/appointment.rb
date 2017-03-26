class Appointment
attr_accessor :doctor, :patient

def initialize(date, doctor)
  @doctor = doctor
  @date = date
  @patient = nil
  self.doctor.add_appointment(self)
  end
end