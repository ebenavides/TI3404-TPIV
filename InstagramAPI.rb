require 'rubygems'
require 'instagram'


class InstagramAPI

	def initialize
		Instagram.configure do |config|
			config.client_id = "410015208"
			config.access_token = "410015208.5b9e1e6.809706cd64d54c0799ff38ba225a7d8d"
		end
	end 


	def Search(tag,c=3)
		@res = Instagram.tag_recent_media(tag,options={:count=>c})
		@res.each do |tag|
			tag.each do |tag2|
				tag2.each do |tag3|
					puts "#{tag3}"
				end
			end
		end
	end
		
		
end


