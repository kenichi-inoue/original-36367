class ProductCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '一般 前期 1次' },
    { id: 3, name: '共通テスト利用 前期 2次' },
    { id: 4, name: '共通テスト利用 中期 2次' },
    { id: 5, name: '共通テスト利用 後期 2次' },
    { id: 6, name: '一般 後期 1次' },
    { id: 7, name: '一般 前期 2次' },
    { id: 8, name: '一般 後期 2次' },
    { id: 9, name: 'その他' },
    # { id: 8, name: '家電・スマホ・カメラ' },
    # { id: 9, name: 'スポーツ・レジャー' },
    # { id: 10, name: 'ハンドメイド' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :products
end
