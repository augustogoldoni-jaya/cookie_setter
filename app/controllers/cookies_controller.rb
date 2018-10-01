class CookiesController < ApplicationController
  def index
    @cookies = request.cookies
    @cookie = Cookie.new
  end

  def create
    key = cookies_params[:key]
    value = cookies_params[:value]
    cookies[key] = value

    redirect_to cookies_path
  end

  def destroy
    cookies.delete(params[:id])
    redirect_to cookies_path
  end

  private

  def cookies_params
    params.require(:cookie).permit(:key, :value)
  end
end
