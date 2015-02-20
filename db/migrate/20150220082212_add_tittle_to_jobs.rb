class AddTittleToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :tittle, :string
    add_column :jobs, :keys, :string
  end
end
