# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.destroy_all
Behavior.destroy_all
Anecdote.destroy_all


student_names = %w(Carlos Coren Jadea Cindy Lakaya Victor Jalayia Amar Samyra Ricardo Kassim)

student_names.each do |student|
  Student.create!({
    name: student
    })
end
behavior_names = %w(CallingOut Talking BeingDisruptive TeasingClassmates AttackingClassmates FoulLanguage Disobedience TalkingBack OutOfSeat Hitting Physical DestroyingThings Cheating Clowing NotPrepared Sleeping Playing InappropriateTouching)
behavior_names.each do |behavior|
  Behavior.create!({
    name: behavior
    })
end
