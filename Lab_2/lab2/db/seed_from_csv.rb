require 'csv'

def seed_students(csv_file_path)
  puts "Seeding students from #{csv_file_path}."
  f = File.new(csv_file_path, 'r')
  csv = CSV.new(f)
  headers = csv.shift
  #Student.delete_all
  puts '----------- '
  puts csv
  csv.each do |row|
    user_information = {
      name: row[0]
    }
    inv = Student.create(user_information)
    puts inv.to_s
  end
  puts 'Seeding students from #{csv_file_path} done.'
end

def seed_students_info(csv_file_path)
  puts "Seeding students info from #{csv_file_path}."
  f = File.new(csv_file_path, 'r')
  csv = CSV.new(f)
  headers = csv.shift
  #StudentInfo.delete_all
  csv.each do |row|
    information = {
      student_id: Student.where(:name => row[1]).first.id,
      address: row[1],
      email: row[2]
    }
    inv = StudentInfo.create(information)
    puts inv.to_s
  end
  puts 'Seeding students info from #{csv_file_path} done.'
end

def seed_classes(csv_file_path)
  puts "Seeding classes from #{csv_file_path}."
  f = File.new(csv_file_path, 'r')
  csv = CSV.new(f)
  headers = csv.shift
  StudentClass.delete_all
  csv.each do |row|
    information = {
      className: row[0]
    }
    inv = StudentClass.create(information)
    puts inv.to_s
  end
  puts 'Seeding classes from #{csv_file_path} done.'
end

def seed_class_to_student
  puts 'Seeding class to student.'
  StudentReference.delete_all
  class_id = 1
  students = Student.all
  students.each do |row|
    information = {
      student_classes_id: class_id,
      student_id: row.id
    }
    if row.id % 2 == 0
    	class_id += 1
    end
    inv = StudentReference.create(information)
    puts inv.to_s
  end
  puts 'Seeding classes from #{csv_file_path} done.'
end
