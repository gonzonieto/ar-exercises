class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3, message: 'Store must have a name with a minimum of three characters.'}
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: 'Store must have a revenue that is an integer greater than 0' }
  validate :must_carry_at_least_mens_or_womens_apparel

  def must_carry_at_least_mens_or_womens_apparel
    unless [mens_apparel, womens_apparel].any?
      errors.add(:womens_apparel, "Does not sell women's apparel; must sell at least one of men's or women's apparel")
      errors.add(:mens_apparel, "Does not sell men's apparel; must sell at least one of men's or women's apparel")
    end
  end
end