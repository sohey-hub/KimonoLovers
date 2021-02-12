require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe 'アイテム登録' do
    context 'アイテム登録ができる時' do
      it "titleとexplanation,region_idとgenre_id,imageが存在すれば登録できること" do
        expect(@item).to be_valid
      end
    end

    context 'アイテム登録ができない時' do
      it "アイテム画像が空では登録できないこと" do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("画像を入力してください")
      end
      it "アイテム名が空では登録出来ないこと" do
        @item.title = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("お着物の名前を入力してください")
       end

       it "アイテムの説明が空では登録出来ないこと" do
        @item.explanation = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("説明文を入力してください")
       end
       it "アイテムの地方名が'---'では登録出来ないこと" do
        @item.region_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("お住まいの地方名は1以外の値にしてください")
       end

       it "アイテムの種類が'---'では登録出来ないこと" do
        @item.genre_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("お着物の種類は1以外の値にしてください")
       end
    end
  end
end