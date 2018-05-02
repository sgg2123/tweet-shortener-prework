def dictionary
  {:hello => 'hi', :to => '2', :two => '2', :too => '2', :for => '4', :four => '4', :be => 'b', :you => 'u', :at => "@", :and => "&"}
end

def word_substituter(tweets)
  keys = dictionary.keys
  words = tweets.split(' ')
  keys.each do |key|
    words.each do |word|
      if word == key.to_s
        if i == words.index(word)
          words[i] = dictionary[word.to_sym]
        else
          words[i] = word
        end
      end
    end
  end
  words.join(' ')
end

def bulk_tweet_shortener
end