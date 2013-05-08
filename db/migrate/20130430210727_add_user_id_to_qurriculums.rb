class AddUserIdToQurriculums < ActiveRecord::Migration
  def change
    add_column :qurriculums, :user_id, :integer
    add_index :qurriculums, :user_id
  end
end
