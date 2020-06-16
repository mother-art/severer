class AlbumsController < ApplicationController

  def index
    @album = Album.all
  end

  def new
    @album = Album.new
    @album.pictures.new
  end

end
