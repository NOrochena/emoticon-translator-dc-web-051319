# require modules here
require "yaml"
# get_emotion {English => Japanesse} get-meaning {japanese > meaing}
def load_library(file_path)
  
  library = YAML.load_file(file_path)
  library.each do |meaning, emoticons|
    puts emoticons 
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end