<% module_namespacing do -%>
class <%= class_name %>
  include SimpleInteraction
  <% if attributes.any? %>
    requires <%= attributes.map(&:to_sym) %>
  <% end -%>
end
<% end -%>