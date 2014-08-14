require_relative 'spec_helper'

describe 'Vagrant' do
  describe command('vagrant --version') do
    it { should return_stdout(/1\.6\.3/) }
  end

  describe command('vagrant plugin list') do
    it { should return_stdout(/vagrant-vcloud .0\.4\.1./) }
  end

  describe command('vagrant box list') do
    it { should return_stdout(/ubuntu1404.*vcloud/) }
  end
end
