class SitemapController < ApplicationController
  layout nil

  def index
    headers["Content-Type"] = "application/xml"

    render "index.xml"
  end
end
