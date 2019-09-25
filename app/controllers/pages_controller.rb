class PagesController < ApplicationController
  def homepage
    @applications = Application.all
  end
end
