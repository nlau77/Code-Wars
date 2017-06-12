# my solution. failing on one test 13/14
# probably failing on the test where the file ends with .jpgg or some sort.
# need regex to find anchor

class String
  def is_audio
    audio_extensions = [".mp3",".flac",".alac",".aac"]
    if !self.include?(" ")
      audio_extensions.any? { |extension| self.include?(extension) }
    else
      false
    end
  end

  def is_img
   image_extensions = [".jpg",".jpeg",".png",".bmp",".gif"]
   if !self.include?(" ")
      image_extensions.any? { |extension| self.include?(extension) }
    else
     false
   end
  end
end

# others solutions

# why ? between jpg?g
# also why === instead of ==
class String
  def is_audio
    /^[a-zA-Z]+\.(mp3|flac|alac|aac)$/ === self
  end

  def is_img
    /^[a-zA-Z]+\.(jpe?g|png|bmp|gif)$/ === self
  end
end
