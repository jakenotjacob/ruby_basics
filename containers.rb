#Pseudo-code overview
#append(aSong) >> list
#=>append given song to list
#deleteFirst() >> aSong
#=> Remove the first song from the list, returning THAT song
#deleteLast() >> aSong
#=> Remove the last song from the list, returning THAT song
#[ anIndex } >> aSong
#=> Return the song identified by anIndex, which maybe an integer OR song title
#

class Song
  attr_reader :name, :artist
  attr_writer :duration

  @@plays = 0

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
    @plays = 0
  end

  def play
    @plays += 1
    @@plays += 1
    "This song: #@plays plays.  Total #@@plays plays."
  end

  #Virtual attributes; instance variable wrappers
  def durationInMinutes
    @duration/60.0 #Force floating pt.
  end
  def durationInMinutes=(value)
    @duration = (value*60).to_i
  end

end

class SongList < Song
  MaxTime = 5*60 #5 minutes

  def initialize
    @songs = Array.new
  end

  def SongList.isTooLong(aSong)
    return aSong.duration > MaxTime
  end

  #Access elements by index
  #list[x]
  def [](key)
    return @songs[key] if key.kind_of?(Integer)
    return @songs.find { |aSong| aSong.name == key }
  end

  def append(aSong)
    @songs.push(aSong)
    #Return reference to current object
    #Allows call-chaining to append()
    self
  end

  def deleteFirst
    @songs.shift
  end

  def deleteLast
    @songs.pop
  end
end
