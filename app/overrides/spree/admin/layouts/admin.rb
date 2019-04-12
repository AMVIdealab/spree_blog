Deface::Override.new(
  virtual_path:  'spree/layouts/admin',
  name:          'blog_menu_tabs',
  insert_bottom: '#main-sidebar',
  text:       <<-HTML
                <% if current_spree_user.respond_to?(:has_spree_role?) && current_spree_user.has_spree_role?(:admin) %>
                  <ul class="nav nav-sidebar">
                    <%= tab plural_resource_name(Spree::Article), url: admin_articles_path, icon: 'book' %>
                  </ul>
                <% end %>
                
              HTML
)
