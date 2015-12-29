require 'spec_helper'
 
describe 'dashing_instances_config', :type => 'class' do
    
  context "Should install dashing_instance" do
    let(:facts) { { :host => Hash.new, :kernel => 'Linux', :osfamily => 'Debian', :operatingsystem => 'Debian' } }
    it do
      should contain_class('dashing')
      should_not contain_dashing__instance
    end
  end
end
