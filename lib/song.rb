class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name)
    @name = name
    @artist_name = artist_name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    self.class.all << self
  end

  def self.new_by_name(song)
    self.class.all << self
  end

  def self.create_by_name(song)
    self.all << song
  end

  def self.find_by_name(song)
    self.all.find {|song| song.name == song }
    return song.self
  end

end
