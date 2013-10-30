class ImagesController < ApplicationController
  def index
    @admin_images = Image.where(:iuser_ids.in => [ '52700baf53686123760c0000' ])
    @images = current_user.uimages
  end

  def new
  	@image = Image.new
  end

  def show
    @image = Image.find(params[:id])
  end

  def create
  	@image = current_user.uimages.create(params[:image].permit(:url))
  	redirect_to images_url
  end

  def destroy
    Image.find(params[:id]).destroy
    redirect_to images_url
  end

end