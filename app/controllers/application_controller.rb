class ApplicationController < ActionController::Base
  before_action :set_search
  def set_search
    @q=Album.search(params[:q])
  end
end
