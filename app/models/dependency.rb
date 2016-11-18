class Dependency < ApplicationRecord
  belongs_to :rgem

  enum os_type: [:linux, :macosx]

  validates :name, presence: true, uniqueness: { scope: :os_type }
end
