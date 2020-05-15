class Doctor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select { |appt| apppointment.doctor == self}
  end

  def self.all
    @@all
  end

end   
