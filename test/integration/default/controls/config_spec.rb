config_file = '/etc/nsswitch.conf'

control 'NSS configuration' do
  title 'should match desired lines'

  describe file(config_file) do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0644' }
  end
end