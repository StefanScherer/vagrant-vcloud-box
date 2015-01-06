describe 'RSync' do
  describe command('rsync --version') do
    its(:stdout) { should match /rsync *version 3.1.0/ }
  end
end
