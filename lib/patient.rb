class Patient 
attr_reader :name, :appointments, :doctors

def initialize(patient_name)
  @name = patient_name
  @appointments = []
  @doctors = []
end

def add_appointment(appointment)
  self.appointments.push(appointment)
  appointment.patient = self
  appointment.doctor.patients.push(self)
  self.doctors.push(appointment.doctor)
end
end