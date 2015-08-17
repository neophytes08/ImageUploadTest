class ImagesController < ApplicationController
  def index
    @picture = Image.all.order("created_at desc")
  end

  def uploadState
    puts params[:file]
    @picture = Image.create(title: params[:fullpath], picture: params[:file])

    if @picture.save
      render json: { :status => :ok, :message => "Success" }
    else
      render json: { :status => :error, :message => "Error" }
    end
  end

end
