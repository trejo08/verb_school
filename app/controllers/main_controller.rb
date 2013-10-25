class MainController < ApplicationController
  def index
  	@index_page = IndexPage.first
  end

  def units
  	@units = Unit.all
  end

  def temas
  	@temas = Topic.all
  end

  def tema
  	@tema = Topic.find(params[:id])
  end
end
