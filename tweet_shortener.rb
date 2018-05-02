def dictionary
  {:hello => 'hi', :to => '2', :two => '2', :too => '2', :for => '4', :four => '4', :be => 'b', :you => 'u', :at => "@", :and => "&"}
end

def word_substituter(tweet)
  keys = dictionary.keys
  items = tweet.split(/\b/)
  new_tweet = items.map do |item|
    if keys.include?(item.to_sym)
      item = dictionary[item.to_sym]
    else
      item
    end
  end
  new_tweet.join
end

def bulk_tweet_shortener
end