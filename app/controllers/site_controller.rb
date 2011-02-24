class SiteController < ApplicationController
  def index
  	  @title = "Welcome to HaiMai?"
  end

  def about
  	  @title = "About HaiMai?"
  end

  def help
  	  @title = "HaiMai? Help"
  end

end
