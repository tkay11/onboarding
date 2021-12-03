class AddAttrsToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :kind, :string
    add_column :projects, :purpose, :string
    add_column :projects, :result, :string
  end
end
