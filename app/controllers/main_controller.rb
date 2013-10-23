class MainController < ApplicationController
  def index
  	@index_page = IndexPage.first
  end
end
