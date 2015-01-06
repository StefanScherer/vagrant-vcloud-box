describe 'Google Chrome' do
  describe command('google-chrome --version') do
    its(:stdout) { should match /Google Chrome \d+/ }
  end
end
