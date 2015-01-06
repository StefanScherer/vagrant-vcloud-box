describe 'VMware Tools' do
  describe process("vmtoolsd") do
    it { should be_running }
  end
end
