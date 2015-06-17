<% module_namespacing do -%>
class <%= class_name %>
  include SimpleInteraction
  <% if requirments.any? %>
  requires <%= requirments.map(&:to_sym).join(', ') %>
  <% end -%>
end
<% end -%>