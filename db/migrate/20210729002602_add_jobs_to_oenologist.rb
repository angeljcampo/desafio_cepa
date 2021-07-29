class AddJobsToOenologist < ActiveRecord::Migration[5.2]
  def change
    add_column :oenologists, :editor, :boolean
    add_column :oenologists, :writer, :boolean
    add_column :oenologists, :reviewer, :boolean
  end
end
