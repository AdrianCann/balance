class Portfolio < ApplicationRecord
  has_many :fund_sections

  def asset_total
    sum = 0
    fund_sections.each do |section|
      sum += section.current_value
    end
    sum
  end
end
