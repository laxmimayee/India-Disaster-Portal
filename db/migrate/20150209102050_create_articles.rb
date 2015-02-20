class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :heading
      t.text :article
      t.string :approve, :default => "No"

      t.timestamps
    end
  end
end
