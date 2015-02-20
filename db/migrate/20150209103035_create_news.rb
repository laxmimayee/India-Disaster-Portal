class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :heading
      t.string :news
      t.string :approve, :default => "No"

      t.timestamps
    end
  end
end
