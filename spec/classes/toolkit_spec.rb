require 'spec_helper'
describe 'percona::toolkit' do

  context 'with default values for all parameters' do
    it { should compile }
    it { should compile.with_all_deps }
    it { should contain_class('percona::toolkit') }

    it { should contain_package('percona-toolkit').with_ensure('installed') }
  end

  context 'with absent' do
    let(:params) do
      { :ensure => 'absent' }
    end

    it { should contain_package('percona-toolkit').with_ensure('absent') }
  end
end
