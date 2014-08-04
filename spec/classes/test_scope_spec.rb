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


  it { should contain_file('/tmp1/asdf') }
  it { should contain_file('/tmp2/asdf') }
  it { should contain_file('/tmp3/asdf') }
end
