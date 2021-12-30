class ProductCondition < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '62以下' },
    { id: 3, name: '63' },
    { id: 4, name: '64' },
    { id: 5, name: '65' },
    { id: 6, name: '66' },
    { id: 7, name: '67' },
    { id: 8, name: '68' },
    { id: 9, name: '69' },
    { id: 10, name: '70' },
    { id: 11, name: '71' },
    { id: 12, name: '72' },
    { id: 13, name: '73以上' }
  ]

  include ActiveHash::Associations
  has_many :products
end
