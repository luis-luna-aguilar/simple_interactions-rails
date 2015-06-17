<% module_namespacing do -%>
class <%= class_name %>
  include SimpleInteraction
  <% if params.any? %>
    requires <%= params.map(&:to_sym).join(', ') %>
  <% end -%>
end
<% end -%>