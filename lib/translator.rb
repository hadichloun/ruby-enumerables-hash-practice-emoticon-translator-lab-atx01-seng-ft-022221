def load_library (file_path)
  require "yaml"
  emojis = YAML.load_file(file_path)
  translator_hash = {:get_meaning => {}, :get_emoticon => {}}
  emojis.each do |meaning_key, emoticons_value|
    (translator_hash[:get_meaning])[emoticons_value[1]] = meaning_key
    (translator_hash[:get_emoticon])[emoticons_value[0]] = emoticons_value[1]
  end
return translator_hash
end

def get_japanese_emoticon (file_path, emoticon) 
  if load_library(file_path)[:get_emoticon][emoticon]
  load_library(file_path)[:get_emoticon][emoticon]
  else "Sorry, that emoticon was not found"
  end
end

def get_english_meaning (file_path, emoticon) 
  if load_library(file_path)[:get_meaning][emoticon]
    load_library(file_path)[:get_meaning][emoticon]
  else "Sorry, that emoticon was not found"
  end
end