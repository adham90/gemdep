class Rgem < ApplicationRecord
  # Relations
  has_many :dependencies

  # Validations
  validates :name, presence: true, uniqueness: true

  # Class Methods
  def self.system_dependencies(gems, os_type)
    rgem = Rgem.includes(:dependencies).where(name: gems,
                                              dependencies: { os_type: os_type })

    unknown_gems        = gems - rgem.map(&:name)
    system_dependencies = rgem.map do |g|
      g.dependencies.map(&:name)
    end.flatten!

    { dependencies: system_dependencies, unknown: unknown_gems }
  end
end
