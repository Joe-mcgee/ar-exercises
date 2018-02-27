class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than: 0}
  validate :has_man_or_woman
  before_destroy :check_for_employees

  private
  def has_man_or_woman
    if mens_apparel != true && womens_apparel != true
      errors.add(:mens_apparel, "must have gender binary")
      errors.add(:womens_apparel, "must have genderbinary")
    end
  end

  def check_for_employees
    if self.employees.size > 1
      errors[:base] << "Cannot delete a store with employees"
      throw :abort
    end
  end
end


