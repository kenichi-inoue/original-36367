class ShippingBurden < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '79以下' },
    { id: 3, name: '80' },
    { id: 4, name: '81' },
    { id: 5, name: '82' },
    { id: 6, name: '83' },
    { id: 7, name: '84' },
    { id: 8, name: '85' },
    { id: 9, name: '86' },
    { id: 10, name: '87' },
    { id: 11, name: '88' },
    { id: 12, name: '89' },
    { id: 13, name: '90' },
    { id: 14, name: '91以上'},
    { id: 15, name: '対象外'}
  ]

  include ActiveHash::Associations
  has_many :products
end
