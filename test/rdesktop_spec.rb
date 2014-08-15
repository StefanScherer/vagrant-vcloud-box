require_relative 'spec_helper'

describe 'rdesktop' do
  describe command('rdesktop --version') do
    it { should return_stderr(/A Remote Desktop Protocol client/) }
  end
end
