require 'rails_helper'

RSpec.describe Dependency, type: :model do
  context '#validations' do
    subject { Dependency.new(name: 'test', os_type: 'linux') }

    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).scoped_to(:os_type) }
  end
end
