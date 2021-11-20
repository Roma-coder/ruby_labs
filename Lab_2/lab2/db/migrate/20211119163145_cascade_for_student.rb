class CascadeForStudent < ActiveRecord::Migration[5.2]
  def change
  remove_foreign_key :students, :student_infos
  add_foreign_key :student, :student_infos, on_delete: :cascade
  end
end
