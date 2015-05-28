describe 'Vagrant' do
  describe command('vagrant --version') do
    its(:stdout) { should match /1\.7\.2/ }
  end

  describe command('vagrant plugin list') do
    its(:stdout) { should match /vagrant-vcloud .0\.4\.4./ }
  end

  describe command('vagrant box list') do
    its(:stdout) { should match /ubuntu1404.*vcloud/ }
  end
end
