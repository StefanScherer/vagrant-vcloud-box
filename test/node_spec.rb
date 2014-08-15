require_relative 'spec_helper'

describe 'Node.js' do
  describe command('node --version') do
    it { should return_stdout(/v0.10.25/) }
  end

  describe command('npm --version') do
    it { should return_stdout(/1.3.10/) }
  end

  describe command('grunt --version') do
    it { should return_stdout(/grunt-cli v0.1.13/) }
  end
end
