class Strain < ApplicationRecord
  has_many :winestrains
  has_many :wines, through: :winestrains
end
