class CreateQurriculums < ActiveRecord::Migration
  def change
    create_table :qurriculums do |t|
      t.string :vacancy

      t.timestamps
    end
  end
end
