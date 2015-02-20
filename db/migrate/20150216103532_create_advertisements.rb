class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :add_heading
      t.text :add_description
      t.string :display_at
      t.string :approve, :default => "No"

      t.timestamps
    end
  end
end
