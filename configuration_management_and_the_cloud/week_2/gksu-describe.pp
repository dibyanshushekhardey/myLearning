describe 'gksu', :type => :class do
  let (:facts) {{ 'is_virtual' => 'false'}}
  it { should contain_package('gksu').with_ensure('latest')}
end