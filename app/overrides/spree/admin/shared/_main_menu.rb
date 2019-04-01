Deface::Override.new(
  name: 'add_blog_to_admin_panel',
  virtual_path: 'spree/layouts/admin',
  insert_bottom: '#main-sidebar',
  text: '<%= link_to "Blog", admin_articles_path%>'
)

