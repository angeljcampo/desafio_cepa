class Wine < ApplicationRecord
  has_many :winestrains, dependent: :destroy
  has_many :strains, through: :winestrains
  accepts_nested_attributes_for :winestrains, reject_if: :all_blank, allow_destroy: true
  

  def show_together
        together = []
        winestrains.map do |f|
            together.push [f.strain.name, f.percentage] 
        end
        together.sort_by{ |strain| strain[0] }.map do |ff|
            "#{ff[0]} (#{ff[1]})%"
        end.join(', ')
  end



end
