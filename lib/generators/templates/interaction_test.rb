require 'test_helper'

<% module_namespacing do -%>
class <%= class_name %>Test < ActiveSupport::TestCase
  
  def test_run_implemented
    assert <%= class_name %>.private_method_defined?(:run), 'You must implement a run method'
  end

end
<% end -%>