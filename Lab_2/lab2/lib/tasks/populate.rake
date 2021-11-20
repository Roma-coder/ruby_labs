require 'rake'
require 'csv'
require_relative '../../db/faker_to_csv.rb'

namespace :populate do
  desc "Create students csv"
  task :students do
    ARGV.each { |a| task a.to_sym do ; end }
    amount = ARGV[1].to_i

    puts "Create student csv for #{amount} of times"
    students = []
    amount.times do 
      name = FakerManager.get_name
      students.push(
        name: name
      )
    end

    FakerManager.save_to_csv('students.csv', students)
  end

  desc "Create students info csv"
  task :infos do
    puts "Create students info csv"
    ARGV.each { |a| task a.to_sym do ; end }
    path = ARGV[1].to_s
    unless path
      puts "Provide a path to the students.csv"
    end

    students_info = []

    f = File.new(path, 'r')
    csv = CSV.new(f)
    headers = csv.shift
    id = 1
    csv.each do |row|
      students_info.push(
        student_id: id,
        name: row[0],
        address: FakerManager.get_address,
        email: FakerManager.get_email(row[0])
      )
      id += 1
    end

    FakerManager.save_to_csv('students_info.csv', students_info)
  end

  desc "Create csv with classes"
  task :classes do
    ARGV.each { |a| task a.to_sym do ; end }
    amount = ARGV[1].to_i

    puts "Create classes csv for #{amount} of times"
    classes_array = []
    FakerManager.get_class.each do |_class| 
      classes_array.push(
        class_name: _class,
      )
    end
    FakerManager.save_to_csv('classes.csv', classes_array)
    puts classes_array

  end

end
