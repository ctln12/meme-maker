require 'json'
require 'open-uri'

puts 'Destroying memes...'

puts 'Getting memes...'
url = 'https://api.imgflip.com/get_memes'
get_memes_serialized = open(url).read
get_memes = JSON.parse(get_memes_serialized)

memes = get_memes["data"]["memes"]

puts 'Creating memes...'
memes.each do |meme|
  Meme.create!(
    name: meme["name"],
    url: meme["url"],
    width: meme["width"],
    height: meme["height"]
  )
end

puts 'Finished!'
