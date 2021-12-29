class PurchasesController < ApplicationController
  before_action :set_product_id, only: [:index, :create]

  def index
    #フォームオブジェクトのインスタンスを生成し、インスタンス変数に代入する
    @purchase_ship = PurchaseShip.new
  end

  def create
    # binding.pry
    @purchase_ship = PurchaseShip.new(purchase_params)
    if @purchase_ship.valid?
      @purchase_ship.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def purchase_params
    params.require(:purchase_ship).permit(:postal_code,:shipping_area_id,:city,:street,:building, :phone).merge(user_id: current_user.id, product_id: params[:product_id])
  end

  def set_product_id
    @product = Product.find(params[:product_id])
  end
end