class DependencySerializer < ActiveModel::Serializer
  attributes :name
  belongs_to :rgem
end
