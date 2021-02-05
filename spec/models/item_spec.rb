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
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it "アイテム名が空では登録出来ないこと" do
        @item.title = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Title can't be blank")
       end

       it "アイテムの説明が空では登録出来ないこと" do
        @item.explanation = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Explanation can't be blank")
       end
       it "アイテムの地方名が'---'では登録出来ないこと" do
        @item.region_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Region must be other than 1")
       end

       it "アイテムの種類が'---'では登録出来ないこと" do
        @item.genre_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Genre must be other than 1")
       end
    end
  end
end