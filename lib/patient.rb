require 'pry'

class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select(){|appointment|
      binding.pry
      #appointment.patient == self
    }
  end

  def doctors
    appointments.map(){|appointment|
      appointment.doctor
    }
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def self.all
    @@all
  end
end
