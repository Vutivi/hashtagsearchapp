class HashtagController < ApplicationController
  def index
    @hashtag_posts = []
  end

  def mark
  end

  def search
    hashtag_id     = HashtagService.search_hashtag(params[:search_term])
    @hashtag_posts = HashtagService.search_hashtag_posts(hashtag_id)
  end
end
