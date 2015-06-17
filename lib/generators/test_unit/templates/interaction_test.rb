require 'test_helper'

<% module_namespacing do -%>
class <%= class_name %>Test < ActiveSupport::TestCase
  
  def test_run_implemented
    assert_nothing_raised do
      <%= class_name %>.run
    end    
  end

end
<% end -%>