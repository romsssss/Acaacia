class Project < ActiveRecord::Base
  belongs_to :category

  validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :description, presence: true, length: { maximum: 300 }
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :category, presence: true
end
