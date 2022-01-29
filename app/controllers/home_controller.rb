class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to albums_path
    end
    @albums=Album.where(published:true )
  end

  def show
    @album = Album.find(params[:id])
  end

end
