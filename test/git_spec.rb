require_relative 'spec_helper'

describe 'Git' do
  describe command('git --help') do
    it { should return_stdout(/usage:/) }
  end
end
