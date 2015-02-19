class AddCodeSnippetToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :code_snippet_text, :string
  end
end
