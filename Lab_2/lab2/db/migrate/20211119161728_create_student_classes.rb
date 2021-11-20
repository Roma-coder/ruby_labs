class CreateStudentClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :student_classes do |t|
      t.string :className

      t.timestamps
    end
  end
end
