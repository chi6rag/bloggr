class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.references :article, index: true
      t.references :tag, index: true

      t.timestamps null: false
    end
    add_foreign_key :taggings, :articles
    add_foreign_key :taggings, :tags
  end
end