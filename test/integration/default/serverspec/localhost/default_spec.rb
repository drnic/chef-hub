require 'spec_helper'

describe command('hub') do
  it { should return_stdout /^usage:/}
end

describe file '/usr/local/bin/hub' do
  it { should be_file }
  it { should be_executable }
end
