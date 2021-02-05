require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe "ユーザー新規登録" do
    context '新規登録できる' do
      it "nicknameとemail,passwordとencrypted_passwordが存在すれば登録できる" do
        expect(@user).to be_valid
      end
      it "passwordとencrypetd_passwordが６文字以上であれば登録できる" do
        @user.password = "123abc"
        @user.password_confirmation = "123abc"
        expect(@user).to be_valid
       end
    end

    context '新規登録できない時' do
      it "nicknameが空では登録できない" do
        @user.nickname = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "emailが空では登録できない" do
        @user.email = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
       it "passwordが空では登録出来ない" do
        @user.password = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
       end
       it "passwordが５文字以下では登録出来ない" do
        @user.password = "12345"
        @user.encrypted_password = "12345"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
       end
    end
  end
end
