require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key = 'nQMnOOWfCNwh40wcrC2joxxkH'
  config.consumer_secret = '96yqAtgu6hunGNYDN34Ktplhc4FtN4Z6tN6jjI53xNijYpt0cC'
  config.oauth_token = '1295352523-UUKV6UGc7tgeioA9JKnS4z5wIUpWSsdVEfs50pn'
  config.oauth_token_secret = '3r6sc4JcqLCx4c36NQo2szyDHV2mlshu1SWEM7Z4ydu09'
end

puts 'Viewing Ambers 5 recent tweets'

client.search("from:heyamberwilkie", result_type: "recent").take(5).each do |tweet|
  puts tweet.text
end


puts 'Viewing 10 recent tweets about ruby'
client.search("#ruby").take(10).each do |tweet|
  puts tweet.text
end
