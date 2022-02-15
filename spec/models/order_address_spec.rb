require 'rails_helper'

RSpec.describe OrderAddress, type: :model do
  describe '購入内容の保存' do
    before do
      user = FactoryBot.create(:user)
      @order_address = FactoryBot.build(:order_address, user_id: user.id)
    end
    context '購入ができる場合' do
      it 'すべての値が正しく入力されていれば保存できる' do
        expect(@order_address).to be_valid
      end
      it 'buildingは空でも保存できる' do
        @order_address.building = ''
        expect(@order_address).to be_valid
      end
    end
    
    context '購入ができない場合' do
      it 'tokenが空である' do
      end
      it '郵便番号が入力されていない' do
      end
      it '郵便番号にハイフンがない' do
      end
      it '都道府県が選択されていない' do
      end
      it '市区町村が入力されていない' do
      end
      it '番地が入力されていない' do
      end
      it '電話番号が入力されていない' do
      end
      it '電話番号が短すぎる' do
      end
      it 'userが紐づいていない' do
      end
    end
  end
end