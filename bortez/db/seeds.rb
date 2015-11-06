# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

student.destroy_all
behavior.destroy_all
comment.destroy_all


student_names = %w(Carlos Coren Jadea Cindy Lakaya Victor Jalayia Amar Samyra Ricardo Kassim)

students.each do |student|
  Student.create!({
    name: student_name
    })
end
behavior_names = %w(CallingOut Talking )
behaviors.each do |behavior|
  Behavior.create!({
    name: behavior_name
    })
end
