class Building < ApplicationRecord
  belongs_to :address , foreign_key: "addressId"
  belongs_to :customer , foreign_key: "customerId"

  has_one :batterie
end
