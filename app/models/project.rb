class Project < ActiveRecord::Base
  belongs_to :category
  has_one :location, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :description, presence: true, length: { maximum: 300 }
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :category, presence: true
  validates :location, presence: true

  delegate :name, to: :category, prefix: true, allow_nil: false
  delegate :address, :short, to: :location, prefix: true, allow_nil: false

  accepts_nested_attributes_for :location
end
