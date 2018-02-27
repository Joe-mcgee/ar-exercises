class Employee < ActiveRecord::Base
  belongs_to :stores
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, :inclusion => {:in => 40..200}
  validates :store_id, presence: true

  before_create do
    self.password = gen_password
  end
  private
  def gen_password
    randomStr = (0...8).map { ('a'..'z').to_a[rand(26)]}.join
    puts randomStr
    return randomStr
  end
end
