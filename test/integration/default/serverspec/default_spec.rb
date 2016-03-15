require 'spec_helper'

consul_tools_bin_dir  = '/usr/local/bin'
consul_tools_work_dir = '/opt/consul'


%W( 
  #{consul_tools_bin_dir}
  #{consul_tools_work_dir}
).each do |dir|
  describe file(dir) do
    it { should be_directory }
    it { should be_mode 755 }
    it { should be_owned_by 'root' }
  end
end

describe file("#{consul_tools_bin_dir}/consul-template") do
  it { should be_file }
  it { should be_mode 755 }
end

describe file("#{consul_tools_bin_dir}/consul-replicate") do
  it { should be_file }
  it { should be_mode 755 }
end
