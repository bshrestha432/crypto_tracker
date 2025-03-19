class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def index
    if params[:search]
      @coins = Coin.where("name LIKE ?", "%#{params[:search]}%")
    else
      @coins = Coin.all
    end
  end
end
