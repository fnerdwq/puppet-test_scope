require 'spec_helper'

describe 'test_scope' do

  let :facts do
    {
      :osfamily        => 'Debian',
      :operatingsystem => 'Ubuntu',
    }
  end

  it { should contain_class('test_scope') }
  it { should contain_class('test_scope::config') }


  let(:params) {{ 
    :testvalue => 'asdf'
  }}

  it { should contain_file('/tmp/test').
       with_content(/^asdf$/) }

end
