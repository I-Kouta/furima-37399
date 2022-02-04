require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe "ユーザー新規登録" do
    context "新規登録できる" do
      it "必須項目が全て記入されていれば登録ができる" do
        expect(@user).to be_valid
      end
      it "パスワードが半角英数字混合で6文字以上なら登録ができる" do
        @user.password = "111aaa"
        @user.password_confirmation = "111aaa"
        expect(@user).to be_valid
      end
    end
    context "新規登録できない" do
      it "ニックネームが入力されていない" do
      end
      it "重複したemailが存在している" do
      end
      it "emailが@を含んでいない" do
      end
      it "パスワードが入力されていない" do
      end
      it "パスワードが5文字以下である" do
      end
      it "パスワードが半角英数字混合でない" do
      end
      it "パスワードとパスワード(確認)が一致しない" do
      end
      it "名前欄が入力されていない" do
      end
      it "生年月日が入力されていない" do
      end
    end
  end
end