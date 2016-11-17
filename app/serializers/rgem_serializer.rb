class RgemSerializer < ActiveModel::Serializer
  attributes :name
  has_many :dependencies
end
