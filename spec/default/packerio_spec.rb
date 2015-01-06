require 'spec_helper'

# write up RSpec integration tests here
#   see: http://serverspec.org/resource_types.html
describe file('/opt/packerio') do
  it { should be_directory }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should be_mode 755 }
end

describe file('/usr/local/bin/packer') do
  it { should be_linked_to '/opt/packerio/0.7.5/packer' }
end

describe command('packer version') do
  its(:stdout) { should match /v0\.7\.5/ }
end
