class Elevator < ApplicationRecord
  belongs_to :column , foreign_key: "columnId"
end
