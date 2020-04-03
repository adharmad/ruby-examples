# songlist container
require 'test/unit'

class Song
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end
  
  def to_s
    "Song: #@name -- #@artist (#@duration)"
  end
end


class SongList
  def initialize
    @songs = Array.new
  end

  def append(song)
    @songs.push(song)
  end

  def delete_first
    @songs.shift          
  end

  def delete_last
    @songs.pop          
  end

  def [](index) 
    @songs[index]
  end

  def to_s
    @songs.each do |ss|
        puts ss.to_s
    end
  end
end

class TestSongList < Test::Unit::TestCase
  def initialize
  end

  def test_delete
    list = SongList.new
    s1 = Song.new('title1', 'artist1', 1)
    s2 = Song.new('title2', 'artist1', 2)
    s3 = Song.new('title3', 'artist1', 3)
    s4 = Song.new('title4', 'artist1', 4)

    list.append(s1)
    list.append(s2)
    list.append(s4)
    list.append(s4)

    puts list.to_s

    assert_equal(s1, list[0])
    assert_equal(s2, list[1])
    assert_equal(s4, list[3])

    assert_nil(list[10])

    assert_equal(s1, list.delete_first)
    assert_equal(s2, list.delete_first)
    assert_equal(s4, list.delete_last)
    assert_equal(s3, list.delete_last)

    assert_equal(nil, list.delete_last)
  end
end

t = TestSongList.new
t.test_delete
