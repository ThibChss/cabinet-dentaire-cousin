class SitemapController < ApplicationController
  layout nil

  def index
    headers["Content-Type"] = "application/xml"

    render :index
  end
end
