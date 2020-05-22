# require modules here
require 'pry'
require "yaml"

def load_library(file_path)
  
 emoticons = YAML.load_file(file_path)

  new_hash = {}
  emoticons.each do |emotion, symbols|
    new_hash[emotion]={
      :english=>symbols[0],
      :japanese=>symbols[1]
      
    }

  end
  #binding.pry
  new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  result=load_library(file_path)['get_emoticon'][emoticon]
  result ? result : "Sorry, that emoticon was not found"
  
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  result=load_library(file_path)['get_meaning'][emoticon]
  result ? result : "Sorry, that emoticon was not found"
end