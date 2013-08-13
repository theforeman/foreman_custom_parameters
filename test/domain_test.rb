require 'test_helper'

class DomainTest < ActiveSupport::TestCase
  def setup
    CUSTOM_PARAMETERS['domains'] = {'param1' => 'aaa', 'param2' => 'bbb'}
  end

  test "new domain has two parameters" do
    assert_equal 2, Domain.new.domain_parameters.count
  end

end