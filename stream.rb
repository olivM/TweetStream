require 'tweetstream'
require 'prettyprint'

TweetStream.configure do |config|
	config.consumer_key       = 'BTXFb0b7tqYP2bBUvf2Y81orU'
	config.consumer_secret    = 'DwLIaHFDdQTIhkfI02zLqKYWPFtTcEwuieGKlcjr1vd2ubqryi'
	config.oauth_token        = '1501751-7cKHJMU9PvYwmxOY3my7iqhROAL2pOTwL2LN2sUdU0'
	config.oauth_token_secret = 'B7gejVh2ekqoEv3Ml0IwhmgVga2rHOF2kLGzHHXgfza6b'
	config.auth_method        = :oauth
end

# This will pull a sample of all tweets based on
# your Twitter account's Streaming API role.
TweetStream::Client.new.sample do |status|
	# The status object is a special Hash with
	# method access to its keys.
	#puts "#{status.text}"
	# ap status.user.lang
	unless status.place.nil?
		p status.place.country
		p status.user.name
		p status.user.followers_count
	end
end