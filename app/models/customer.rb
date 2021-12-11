class Customer < ApplicationRecord
  belongs_to :address , foreign_key: "addressId"
  belongs_to :user , foreign_key: "userId"

  has_one :building
end
