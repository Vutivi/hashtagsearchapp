class HashtagController < ApplicationController
  def index
    @hashtag_posts = []
  end

  def mark
    Hashtag.tap.new do |hashtag|
      hashtag.hashtag_id = params[:id]
      hashtag.message    = params[:message]
    end
  end

  def search
    hashtag_id     = HashtagService.search_hashtag(params[:search_term])
    @hashtag_posts = HashtagService.search_hashtag_posts(hashtag_id)
  end
end
