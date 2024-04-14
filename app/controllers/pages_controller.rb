require "browser/aliases"

class PagesController < ApplicationController
  Browser::Base.include(Browser::Aliases)

  def construction; end

  def home
    @browser = Browser.new(request.user_agent)

    @check_browser = @browser.chrome? || @browser.safari? || @browser.edge?
    @check_mobile = @browser.mobile?
  end

  def team; end

  def documentation; end

  def office; end
end
