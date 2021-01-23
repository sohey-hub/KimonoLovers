class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name:  '--お着物の種類を選択してください--' },
    { id: 2, name:  '訪問着' },
    { id: 3, name:  '黒留袖' },
    { id: 4, name:  '色留袖' },
    { id: 5, name:  '付下' },
    { id: 6, name:  '色無地' },
    { id: 7, name:  '小紋' },
    { id: 8, name:  '紬' },
    { id: 9, name:  '浴衣' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

  end