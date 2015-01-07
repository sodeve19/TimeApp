class AddNameAndTimeToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :name, :string
    add_column :projects, :time, :integer
  end
end
