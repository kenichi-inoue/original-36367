require 'rails_helper'

RSpec.describe Product, type: :model do
  before do
    @product = FactoryBot.build(:product)
  end

  describe '出品商品情報入力' do
    context '商品情報入力できる場合' do
      it 'すべての項目が入力されていれば登録できる' do
        expect(@product).to be_valid
      end
    end

    context '商品情報入力できない場合' do
      it '受験校が必須であること' do
        @product.product_name = ''
        @product.valid?
        expect(@product.errors.full_messages).to include("Product name can't be blank")
      end

      it '商品説明が必須であること' do
        @product.product_discription = ''
        @product.valid?
        expect(@product.errors.full_messages).to include("Product discription can't be blank")
      end

      it '受験区分の情報が必須であること' do
        @product.product_category_id = ''
        @product.valid?
        expect(@product.errors.full_messages).to include("Product category can't be blank")
      end

      it '受験区分に「--」が選択されていないこと' do
        @product.product_category_id = '--'
        @product.valid?
        expect(@product.errors.full_messages).to include('Product category is not included in the list')
      end

      it '偏差値の情報が必須であること。' do
        @product.product_condition_id = ''
        @product.valid?
        expect(@product.errors.full_messages).to include("Product condition can't be blank")
      end

      it '偏差値に「--」が選択されていないこと' do
        @product.product_condition_id = '--'
        @product.valid?
        expect(@product.errors.full_messages).to include('Product condition is not included in the list')
      end

      it '共通テストボーダーの情報が必須であること' do
        @product.shipping_burden_id = ''
        @product.valid?
        expect(@product.errors.full_messages).to include("Shipping burden can't be blank")
      end

      it '発送料の負担に「--」が選択されていないこと' do
        @product.shipping_burden_id = '--'
        @product.valid?
        expect(@product.errors.full_messages).to include('Shipping burden is not included in the list')
      end

      it '試験場の場所の情報が必須であること' do
        @product.shipping_area_id = ''
        @product.valid?
        expect(@product.errors.full_messages).to include("Shipping area can't be blank")
      end

      it '試験場の場所に「--」が選択されていないこと' do
        @product.shipping_area_id = '--'
        @product.valid?
        expect(@product.errors.full_messages).to include('Shipping area is not included in the list')
      end

      it '受験の状況の情報が必須であること' do
        @product.days_to_ship_id = ''
        @product.valid?
        expect(@product.errors.full_messages).to include("Days to ship can't be blank")
      end

      it '受験の状況に「--」が選択されていないこと' do
        @product.days_to_ship_id = '--'
        @product.valid?
        expect(@product.errors.full_messages).to include('Days to ship is not included in the list')
      end

      it '金額の情報が必須であること' do
        @product.purchase_price = ''
        @product.valid?
        expect(@product.errors.full_messages).to include("Purchase price can't be blank")
      end

      it '金額は、¥299以下では保存できないこと' do
        @product.purchase_price = '200'
        @product.valid?
        expect(@product.errors.full_messages).to include('Purchase price is not included in the list')
      end

      it '金額は、¥9,999,999超では保存できないこと' do
        @product.purchase_price = '200000000'
        @product.valid?
        expect(@product.errors.full_messages).to include('Purchase price is not included in the list')
      end

      it '金額は半角数値のみ保存可能であること。' do
        @product.purchase_price = '300b'
        @product.valid?
        expect(@product.errors.full_messages).to include
      end

      it '受験校画像を1枚つけることが必須であること' do
        @product.image = nil
        @product.valid?
        expect(@product.errors.full_messages).to include("Image can't be blank")
      end

      it '受験区分の情報が必須であること' do
        @product.product_category_id = ''
        @product.valid?
        expect(@product.errors.full_messages).to include("Product category can't be blank")
      end

      it 'ユーザーが紐付いていること' do
        @product.user = nil
        @product.valid?
        expect(@product.errors.full_messages).to include('User must exist')
      end
    end
  end
end
