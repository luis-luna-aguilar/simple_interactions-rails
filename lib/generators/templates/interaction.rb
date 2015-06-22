<% interaction_namespaced do -%>
class <%= class_name %>
  include SimpleInteraction
<% if options['fail_with'] -%>
  fail_with '<%= options['fail_with'] -%>'
<% end -%>
<% if options['requirements'].any? %>
  requires <%= options['requirements'].map {|s| ':' + s.strip }.join(', ') %>
<% end -%>

end
<% end -%>