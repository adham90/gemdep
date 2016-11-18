require 'rails_helper'

RSpec.describe Rgem, type: :model do
  describe '#system_dependencies' do
    let(:rgem) { create :rgem }
    let!(:vim) do
      create :dependency, name: 'vim',
                          rgem: rgem, os_type: 'linux'
    end
    let!(:docker) do
      create :dependency, name: 'docker',
                          rgem: rgem, os_type: 'macosx'
    end
    let!(:tmux) do
      create :dependency, name: 'tmux',
                          rgem: rgem, os_type: 'linux'
    end

    context '#linux' do
      it 'should return array of linux system_dependencies only' do
        os   = 'linux'
        gems = [rgem.name]

        expect(Rgem.system_dependencies(gems, os)).to eq([vim.name, tmux.name])
      end
    end

    context '#macosx' do
      it 'should return array of macosx system_dependencies only' do
        os   = 'macosx'
        gems = [rgem.name]

        expect(Rgem.system_dependencies(gems, os)).to eq([docker.name])
      end
    end
  end
end
