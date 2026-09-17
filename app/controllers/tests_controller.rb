class TestsController < ApplicationController

  def index
  end

  def pay
    require 'payjp'
    Payjp.api_key = ENV.fetch("PAYJP_SECRET_KEY")
    Payjp::Charge.create(
      :amount => 8000, # 決済する値段
      :card => params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      :currency => 'jpy',
    )
  end

end

