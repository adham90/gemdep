class Dependency < ApplicationRecord
  belongs_to :rgem
  enum os_type: [:linux, :macosx]

  validates_presence_of :name
  validates_uniqueness_of :name, scope: [:os_type]
end
