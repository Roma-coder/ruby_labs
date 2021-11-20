class CreateStudentReferences < ActiveRecord::Migration[5.2]
  def change
    create_table :student_references do |t|
      t.references :student
      t.references :student_classes

      t.timestamps
    end
  end
end
