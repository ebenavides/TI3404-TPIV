load 'TwitterAPI.rb'
load 'InstagramAPI.rb'

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