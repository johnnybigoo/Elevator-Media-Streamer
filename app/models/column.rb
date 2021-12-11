class Column < ApplicationRecord
  belongs_to :batterie , foreign_key: "batteryId"
  has_one :elevator
end
