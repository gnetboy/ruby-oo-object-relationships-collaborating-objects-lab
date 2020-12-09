require 'pry'
class MP3Importer
    attr_reader :path
    
 def initialize(path)
     @path=path
 end
 
 def files
     files = []
     Dir.each_child(path){|file| files << file if file.length > 4}
     files
 end

 def  import
      files.collect {|filename|Song.new_by_filename(filename)}
 end

end