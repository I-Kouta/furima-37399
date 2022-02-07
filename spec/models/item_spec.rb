require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe "商品出品" do
    context "商品を出品できる" do
      it "必須項目が全て記入されていれば出品ができる" do
      end
    end
    context "商品を出品できない" do
      it "画像が選択されていない" do
      end
      it "商品名が入力されていない" do
      end
      it "説明欄が入力されていない" do
      end
      it "カテゴリーが選択されていない" do
      end
      it "商品の状態が選択されていない" do
      end
      it "配送料の負担が選択されていない" do
      end
      it "発送までの日数が選択されていない" do
      end
      it "販売価格が入力されていない" do
      end
      it "販売価格が全角数字で入力されている" do
      end
      it "販売価格が300円未満で登録されている" do
      end
      it "販売価格が10,000,000円以上で登録されている" do
      end
    end
  
  
  
  
  
  
  
  
  
  
  
  end
end