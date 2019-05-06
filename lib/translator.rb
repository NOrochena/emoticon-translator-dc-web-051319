# require modules here
require "yaml"
# get_emotion {English => Japanesse} get-meaning {japanese > meaing}
def load_library(file_path)
  new_hash = {
    "get_emotion" => {},
    "get_meaning" => {}
  }
  library = YAML.load_file(file_path)
  
  library.each do |meaning, emoticons|
    emoticons.each_with_index do |emoticon, index|
      if index == 0
        new_hash["get_emotion"][emoticon] = emoticon[1]
      else
        new_hash["get_meaning"][emoticon[1]] = meaning
      end
    end
  end
  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end