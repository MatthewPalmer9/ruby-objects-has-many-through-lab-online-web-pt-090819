class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Genre.all.select(){|genre|
      
    }
  end

  def self.all
    @@all
  end
end
