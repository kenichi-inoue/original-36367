class DaysToShip < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '合格' },
    { id: 3, name: '出願準備中' },
    { id: 4, name: '出願済  ' },
    { id: 5, name: '一次試験合格' },
    { id: 6, name: '補欠合格' },
    { id: 7, name: '手続き完了' },
    { id: 8, name: '2次試験取りやめ' },
    { id: 9, name: '不合格' }
  ]

  include ActiveHash::Associations
  has_many :products
end
