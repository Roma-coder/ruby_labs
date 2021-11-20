class CreateStudentInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :student_infos do |t|
      t.references :student, null: false, foreign_key: true
      t.text :address
      t.string :email

      t.timestamps
    end
  end
end
