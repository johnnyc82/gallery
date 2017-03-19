class ImageGalleriesController < ApplicationController
  def index
    @image_gallery = ImageGallery.all
  end

  def new
    @image_gallery = ImageGallery.new
  end

  def show
    @image_gallery = ImageGallery.find(params[:id])
  end

  def create
    @image_gallery = ImageGallery.new(image_gallery_params)
    if @image_gallery.save
      redirect_to @image_gallery
    else
      render :new
    end
  end

  def edit
    @image_gallery = ImageGallery.find(params[:id])
  end

  def update
    @image_gallery = ImageGallery.find(params[:id])
    if @image_gallery.update_attributes(image_gallery_params)
      redirect_to @image_gallery
    else
      render :new
    end
  end

  def destroy
    @image_gallery = ImageGallery.find(params[:id])
    @image_gallery.destroy
    redirect_to :image_galleries
  end

private

  def image_gallery_params
    params.require(:image_gallery).permit(:title, :image, :body, images: [])
  end
end
