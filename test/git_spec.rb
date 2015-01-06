describe 'Git' do
  describe command('git --help') do
    its(:stdout) { should match /usage:/ }
  end
end
