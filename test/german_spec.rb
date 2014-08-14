require_relative 'spec_helper'

describe 'Germany' do
  describe file('/etc/timezone') do
    it { should be_file }
    its(:content) { should match /Europe.Berlin/ }
  end
end
