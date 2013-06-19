
load 'TwitterAPI.rb'
load 'InstagramAPI.rb'
require 'twitter'
require 'instagram'

print "\nDigite el #hashtag\n"
hashtag = gets.chomp

print "\nDigite la cantidad \n"
quantity = gets.chomp

_twitter = TwitterAPI.new()
_instagram = InstagramAPI.new()

print "\nTwitter=================================="
_twitter.Search(hashtag,quantity)
print "\n\n\nInstagram============================"
_instagram.Search(hashtag,quantity)

get '/' do
  erb:VentanaInicial
end

post '/Rtweet' do
  _twitter.Search(hashtag,5)
  redirect 'tweet'
end

get 'tweet' do
  erb:tweet
end

post '/Rinstagram' do
  _instagram.Search(tag,5)
  redirect 'insta'
end

get '/insta' do
  erb:insta
end
