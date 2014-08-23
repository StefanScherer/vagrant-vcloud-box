require_relative 'spec_helper'

describe 'RSync' do
  describe command('rsync --version') do
    it { should return_stdout(/rsync *version 3.1.0/) }
  end
end
