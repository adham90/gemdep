class Rgem < ApplicationRecord
  has_many :dependencies

  validates :name, presence: true, uniqueness: true

  def self.system_dependencies(gems, os)
    system_dependencies = Rgem.includes(:dependencies)
                              .where(name: gems, 'dependencies.os_type' => os)
    return [] unless system_dependencies

    unknown_gems = gems - system_dependencies.map(&:name)

    system_dependencies = system_dependencies.map do |pkg|
      pkg.dependencies.map(&:name)
    end

    system_dependencies.flatten!

    { dependencies: system_dependencies, unknown: unknown_gems }
  end
end
