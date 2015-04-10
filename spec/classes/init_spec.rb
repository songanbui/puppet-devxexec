require 'spec_helper'
describe 'devxexec' do

  context 'with defaults for all parameters' do
    it { should contain_class('devxexec') }
  end
end
