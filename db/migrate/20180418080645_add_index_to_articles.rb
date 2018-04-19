class AddIndexToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :time, :datetime
    add_index :articles, [:time]
  end
end
