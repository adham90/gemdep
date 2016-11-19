class Dependency < ApplicationRecord
  # Relations
  belongs_to :rgem

  # Plugins
  enum os_type: [:linux, :macosx]

  # Validations
  validates :name, presence: true, uniqueness: { scope: :os_type }
end
