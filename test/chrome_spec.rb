require_relative 'spec_helper'

describe 'Google Chrome' do
  describe command('google-chrome --version') do
    it { should return_stdout(/Google Chrome \d+/) }
  end
end
