class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name= name
    @@all << name
  end



end
