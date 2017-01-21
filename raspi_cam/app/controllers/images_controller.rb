class ImagesController < ApplicationController
  def index

  end

  def new
    @image = Image.new
  end

  def create
    binding.pry
    @image = Image.create(image_params)
    redirect_to :root
  end
  
  def raspi_photo
    @image = Image.new
    path = '/Users/romantehanov/Desktop/image.jpg'
    File.open(path) do |f|
       @image.image = f
    end
    @image.save!
    redirect_to :root
  end

  def show

  end

  def update

  end

  def destroy

  end

  private

  def image_params
    params.require(:image).permit(:name, :image)
  end
end
