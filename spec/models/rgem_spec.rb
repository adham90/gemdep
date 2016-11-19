require 'rails_helper'

RSpec.describe Rgem, type: :model do
  describe '#system_dependencies' do
    let(:rgem) { create :rgem }
    let!(:vim) do
      create :dependency, name: 'vim',
                          rgem: rgem, os_type: :linux
    end
    let!(:docker) do
      create :dependency, name: 'docker',
                          rgem: rgem, os_type: :macosx
    end
    let!(:tmux) do
      create :dependency, name: 'tmux',
                          rgem: rgem, os_type: :linux
    end
    let(:gems) { [rgem.name, 'unknown_gem'] }
    let(:system_dependencies) { Rgem.system_dependencies(gems, os) }

    context '#linux' do
      let(:os) { :linux }

      it 'should return an array of linux system_dependencies only' do
        dependencies = system_dependencies[:dependencies]

        expect(dependencies).to eq([vim.name, tmux.name])
      end

      it 'should return unknown_gems' do
        unknown_gems = system_dependencies[:unknown]

        expect(unknown_gems).to eq([gems[1]])
      end
    end

    context '#macosx' do
      let(:os) { :macosx }

      it 'should return array of macosx system_dependencies only' do
        dependencies = system_dependencies[:dependencies]

        expect(dependencies).to eq([docker.name])
      end

      it 'should return unknown_gems' do
        unknown_gems = system_dependencies[:unknown]

        expect(unknown_gems).to eq([gems[1]])
      end
    end
  end
end
