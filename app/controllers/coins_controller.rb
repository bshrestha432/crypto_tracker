class CoinsController < ApplicationController
  def index
    if params[:search]
      @coins = Coin.where("name LIKE ?", "%#{params[:search]}%").page(params[:page])
    else
      @coins = Coin.page(params[:page])
    end
  end