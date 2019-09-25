class PagesController < ApplicationController
  def homepage
    @applications = Application.all
    @application = Application.first
  end
end
