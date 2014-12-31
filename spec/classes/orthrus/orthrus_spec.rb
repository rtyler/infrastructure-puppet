require 'spec_helper'

describe 'orthrus' do
  context 'on ubuntu' do
    let(:facts) do
      {
        :asfosname => 'ubuntu',
      }
    end

    it { should contain_package 'orthrus' }
  end
end
