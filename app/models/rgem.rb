class Rgem < ApplicationRecord
  has_many :dependencies

  validates_presence_of :name
end
