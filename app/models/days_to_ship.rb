class DaysToShip < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '不要' },
    { id: 3, name: '要：前泊' },
    { id: 4, name: '要：後泊' },
    { id: 5, name: '要：前後泊' }
  ]

  include ActiveHash::Associations
  has_many :products
end
