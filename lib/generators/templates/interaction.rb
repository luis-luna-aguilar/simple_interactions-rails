<% module_namespacing do -%>
class <%= class_name %>
  include SimpleInteraction
<% if options['requirements'].any? %>
  requires <%= options['requirements'].map {|s| ':' + s.strip }.join(', ') %>
<% end -%>

end
<% end -%>