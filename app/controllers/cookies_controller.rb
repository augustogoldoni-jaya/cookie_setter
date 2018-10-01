class CookiesController < ApplicationController
  def index
    @cookies = request.cookies
  end
end
