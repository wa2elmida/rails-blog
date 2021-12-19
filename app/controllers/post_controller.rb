# app/controllers/post_controller.rb
class PostController < ApplicationController
  def create
  end

  def store
    # upload image to cloudinary
  #  @image = Cloudinary::Uploader.upload(params[:media],
  #:public_id => "179835266379513")

  #@image = Cloudinary::Uploader.upload(params[:media])
    # create a new post object and save to db
    @post = Post.new({:title => params[:title], :body => params[:body], :author => params[:author],
        })
#:media => @image['179835266379513']
    if @post.save
      # broadcasting posts using pusher
      Pusher.trigger('posts-channel','new-post', {
        id: @post.id,
        title: @post.title,
        media: @post.media,
        body: @post.body
      })
    end

    redirect_to('/')
  end
end
