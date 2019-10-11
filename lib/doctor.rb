class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.map(){|appointment|
      appointment.doctor == self
    }
  end

  def self.all
    @@all
  end
end
