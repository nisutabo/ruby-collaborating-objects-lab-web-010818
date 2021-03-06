require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir["#{path}/*.mp3"]
    @files.map{|file| file.split("/mp3s/")[1]}
  end

  def import
    #songs = files.map{|file| file.split(/\s\-\s|\.mp3/}
    files.each{|file| Song.new_by_filename(file)}

  end

end
