class SitemapController < ApplicationController
  layout nil

  def index
    headers["Content-Type"] = "application/xml"

    render "index.xml.builder"
  end
end
