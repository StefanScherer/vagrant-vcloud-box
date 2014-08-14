require_relative 'spec_helper'

describe 'SSH' do
  describe service('ssh') do
    it { should be_enabled }
    it { should be_running }
  end
  describe port(22) do
    it { should be_listening  }
  end
end
