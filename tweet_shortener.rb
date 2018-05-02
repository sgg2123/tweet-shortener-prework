def dictionary
  {:hello => 'hi', :to => '2', :two => '2', :too => '2', :for => '4', :four => '4', :be => 'b', :you => 'u', :at => "@", :and => "&"}
end

def word_substituter(tweets)
  keys = dictionary.keys
  words = tweets.split(' ')
  keys.map do |key|
    words.map do |word|
      if word == key.to_s
        word = dictionary[key]
      end
    end
  end
  words.join(' ')
end

def bulk_tweet_shortener
end