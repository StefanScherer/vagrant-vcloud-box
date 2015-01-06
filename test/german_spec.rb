describe 'Germany' do
  describe file('/etc/timezone') do
    it { should be_file }
    its(:content) { should match /Europe.Berlin/ }
  end

  describe command('gsettings get org.gnome.desktop.input-sources sources') do
    its(:stdout) { should match /^\[\('xkb', 'de'\)/ }
  end
end
