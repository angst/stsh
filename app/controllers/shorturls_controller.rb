class ShorturlsController < ApplicationController
  def index
    redirect_to site_index
  end
  
  def show
    redirect_to Shorturl.find_by_shortened(params[:id]).url
  end

  def create
    short = Shorturl.find_or_create_by_url(request.body.read).shorten
    render :text => "http://stsh.me/#{short}"
  end
end
