class HashtagService
  FACEBOOK_USER_ID = 100008491682897

  def self.search_hashtag search_term
    response = HTTParty.get("graph.facebook.com/ig_hashtag_search?\
      user_id=#{FACEBOOK_USER_ID}&q=#{search_term}")

    response.body["id"]
  end

  def self.search_hashtag_posts search_id
    response = HTTParty.get("graph.facebook.com/#{search_id}/recent_media?\
      user_id=#{FACEBOOK_USER_ID}")

    JSON.parse(response.body)["data"]
  end

  def self.get_post_with_hashtag post_id
    response = HTTParty.get("https://graph.facebook.com/v3.2/posts/#{post_id}")
    JSON.parse(response.body)["data"]
  end
end
