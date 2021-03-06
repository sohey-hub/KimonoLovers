class Region < ActiveHash::Base
  self.data = [
    { id: 1, name: '--お住まいの地域を選択してください--' },
    { id: 2, name: '北海道' },
    { id: 3, name: '東北' },
    { id: 4, name: '関東' },
    { id: 5, name: '中部' },
    { id: 6, name: '近畿' },
    { id: 7, name: '中国' },
    { id: 8, name: '四国' },
    { id: 9, name: '九州' },
    { id: 10, name: '沖縄' }
  ]

  include ActiveHash::Associations
  has_many :items

end