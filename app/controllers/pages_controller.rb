class PagesController < ApplicationController
  def construction; end

  def home
    @browser = Browser.new(request.user_agent)

    @browser = @browser.chrome? || @browser.safari? || @browser.edge?
  end

  def team; end

  def documentation; end

  def office; end
end
