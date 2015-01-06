describe 'rdesktop' do
  describe command('rdesktop --version') do
    its(:stderr) { should match /A Remote Desktop Protocol client/ }
  end
end
