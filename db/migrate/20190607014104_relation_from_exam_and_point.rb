class RelationFromExamAndPoint < ActiveRecord::Migration[5.2]
  def up
    add_column :exams, :point_po_id, :integer
    add_column :exams, :point_or_id, :integer
    add_column :exams, :point_n_id, :integer
    add_column :exams, :point_a_id, :integer
  end

  def down
    remove_column :exams, :point_po_id, :integer
    remove_column :exams, :point_or_id, :integer
    remove_column :exams, :point_n_id, :integer
    remove_column :exams, :point_a_id, :integer
  end
end
