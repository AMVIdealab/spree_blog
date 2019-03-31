class CreateSpreeArticles < SpreeExtension::Migration[5.2]
  def change
    create_table :spree_articles do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
    add_index :spree_articles, :title, unique: true
  end
end
