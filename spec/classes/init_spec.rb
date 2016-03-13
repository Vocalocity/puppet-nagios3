require 'spec_helper'
describe 'nagios3' do

  context 'with defaults for all parameters' do
    it { should contain_class('nagios3') }
  end
end
