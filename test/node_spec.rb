describe 'Node.js' do
  describe command('node --version') do
    its(:stdout) { should match /v0.10.\d/ }
  end

  describe command('npm --version') do
    its(:stdout) { should match /1.3.\d/ }
  end

  describe command('grunt --version') do
    its(:stdout) { should match /grunt-cli v0.\d.\d/ }
  end
end
