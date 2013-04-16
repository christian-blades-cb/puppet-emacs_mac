require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/
describe 'emacs_mac' do
  let(:facts) do
    { :boxen_home => '/test/boxen' }
  end
  
  it do    
    should contain_class('emacs_mac')
    should include_class('homebrew')

    should contain_exec('tap-railwaycat-emacsmacport').with(
      'command' => 'brew tap railwaycat/emacsmacport',
      'creates' => "/test/boxen/homebrew/Library/Taps/railwaycat-emacsmacport",
      'before'  => 'Package[emacs-mac]')
    
    should contain_package('emacs-mac').with_ensure('emacs-24.3-mac-4.1')
    
  end
end
