class Rgem < ApplicationRecord
  has_many :dependencies

  validates :name, presence: true, uniqueness: true
end
