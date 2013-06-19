require 'rubygems'
require 'twitter'

class TwitterAPI
	
	def initialize
		Twitter.configure do |config|
			config.consumer_key = 'uKomZsjBMALqLuaSUKJ2Q'
			config.consumer_secret = 'bMIq7BEDPO4THQjlippl5AKQQpQFCGsc2pShStVEg'
			config.oauth_token = '898572810-CAS69XgQhzPRi2sZOqecREJe8MuV37FkfqFT2sB0'
			config.oauth_token_secret = 'qfzhQLF5DXyPnwgF0LKkSdpoI1i5Xa5GnMbgMCYo4f4'
		end
	end
		
	def Search(hashtag,quantity=5)
		Twitter.search(hashtag,:count=>quantity,:result_type=>"recent").results.each do |status|
			puts "/n#{status.from_user} : #{status.text} created at #{status.created_at.to_s}/nuser picture : #{Twitter.user(status.from_user).profile_image_url.to_s}"
		end
	end
end

