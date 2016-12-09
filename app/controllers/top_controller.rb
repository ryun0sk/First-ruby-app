class TopController < ApplicationController
  def top
    @q = University.search(params[:q])
  end
end
