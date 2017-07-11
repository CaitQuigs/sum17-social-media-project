module ApplicationHelper

    def total_followers(user_id)
        total = 0
        User.all.each do |follower|
            if follower.following.include? user_id
                total += 1
            end
        end
        return total
    end
    
    def total_tweets(user_id)
        total_tweets = 0
        Tweet.all.each do |tweet|
            if tweet.user == user_id
                total_tweets += 1
            end
        end
        return total_tweets
    end

end
