# Write your code here.
require 'pry'

def dictionary
  dictionary = {
    "hello" => "hi",
    "two" => "2",
    "too" => "2",
    "to" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
}
end

def word_substituter(tweets)
  chopped_array = tweets.split(" ")
  replaced_tweet = []
  chopped_array.each do |x|
    if dictionary.keys.include?(x)
        replaced_tweet << dictionary[x]
      else
        replaced_tweet << x
    end
  end
  replaced_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  shortened_tweet = []
  tweets.each do |x|
    short_guy = word_substituter(x)
    shortened_tweet << short_guy
    end
  shortened_tweet.each do |x|
    puts x
  end
end

def selective_tweet_shortener(tweets)
  if tweet.length >= 141
    word_substituter(tweets)
  else
    tweet
  end
end


def shortened_tweet_truncator(tweets)
  short_boi = word_substituter(tweets)
  if short_boi.length >= 141
    short_boi[141..1000].chomp
  else
    word_substituter(tweets)

end
