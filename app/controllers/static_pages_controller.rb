class StaticPageController < ApplicationController
  def home
    render text: "Test"
  end
end