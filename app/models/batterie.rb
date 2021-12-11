class Batterie < ApplicationRecord
  belongs_to :building , foreign_key: "buildingId"
  belongs_to :employee , foreign_key: "employeeId"

  has_one :column
end
