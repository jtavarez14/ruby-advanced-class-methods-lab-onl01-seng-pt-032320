class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new 
    self.all << song
    song
  end 
  
  def self.new_by_name(name)
    song = self.new 
    song.name = name 
    song
  end 
  
  def self.create_by_name(name)
    song = self.new 
    song.name = name 
    self.all << song 
    song 
  end 
  
  def self.find_by_name(name)
    @@all.find{|title| title.name == name}
  end 
  
  def self.find_or_create_by_name(name)
    result = self.find_by_name(name)
    if result  
      result 
    else 
      self.create_by_name(name)
  end 
  end
  
  def self.alphabetical 
   sort =  self.all.sort_by {|title| title.name}
   sort
  end 
  
  def self.new_from_filename(filename)
    result = self.new_from_filename(filename)
    song = self.create
    song.name = result.name
    song.artist_name = result.artist_name
    song
  end
  
  
end
