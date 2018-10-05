class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(story_id: params[:story_id])
    redirect_to stories_url, notice: "#{favorite.stry.user.name}さんのブログをお気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(story_id: params[:story_id]).destroy
    redirect_to stories_url, notice: "#{favorite.story.user.name}さんのブログをお気に入り解除しました"
  end
end
