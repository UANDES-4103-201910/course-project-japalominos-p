class PostDenouncedController < ApplicationController
  def Index
      @inappropietes=Inappropiete.where(flag: nil )
          #Post.joins("INNER JOIN inappropietes ON inappropietes.post_id = posts.id AND  inappropietes.flag IS NULL ")
  end
end
