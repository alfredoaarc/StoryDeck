# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#

puts 'Cleaning database'
Story.destroy_all
Business.destroy_all
User.destroy_all
puts 'Database cleaned'

# Seed users
puts 'Creating users'
hans_user = User.create(
  first_name: 'Hans',
  last_name: 'Smith',
  email: 'hans@email.story',
  password: '123456',
  business_owner: true
)
puts 'Business owner Hans created'
maria_user = User.create(
  first_name: 'María',
  last_name: 'Alba',
  email: 'maria@email.story',
  password: '123456',
  business_owner: true
)
puts 'Business owner María created'
sara_user = User.create(
  first_name: 'Sara',
  last_name: 'Chabeur',
  email: 'sara@email.story',
  password: '123456',
  business_owner: true
)
puts 'Business owner Sara created'
matias_user = User.create(
  first_name: 'Matías',
  last_name: 'Luna',
  email: 'matias@email.story',
  password: '123456',
  business_owner: true
)
puts 'Business owner Matías created'
alexandra_user = User.create(
  first_name: 'Alexandra',
  last_name: 'Evermann',
  email: 'alexandra@email.story',
  password: '123456',
  business_owner: true
)
puts 'Business owner Alexandra created'
ali_user = User.create(
  first_name: 'Ali',
  last_name: 'shapti',
  email: 'ali@email.story',
  password: '123456',
  business_owner: true
)
puts 'Business owner Ali created'
javiera_user = User.create(
  first_name: 'Javiera',
  last_name: 'Pinto',
  email: 'javiera@email.story',
  password: '123456',
  business_owner: false
)
puts 'Content creator Javiera created'
monica_user = User.create(
  first_name: 'Monica',
  last_name: 'Alicante',
  email: 'monica@email.story',
  password: '123456',
  business_owner: false
)
puts 'Content creator Monica created'
damian_user = User.create(
  first_name: 'Damian',
  last_name: 'Rogers',
  email: 'damian@email.story',
  password: '123456',
  business_owner: false
)
puts 'Content creator Damian created'
alicia_user = User.create(
  first_name: 'Alicia',
  last_name: 'Beatle',
  email: 'alicia@email.story',
  password: '123456',
  business_owner: false
)
puts 'Content creator Alicia created'
gonzalo_user = User.create(
  first_name: 'Gonzalo',
  last_name: 'Pharrell',
  email: 'gonzalo@email.story',
  password: '123456',
  business_owner: false
)
puts 'Content creator Gonzalo created'
oliver_user = User.create(
  first_name: 'Oliver',
  last_name: 'Junior',
  email: 'oliver@email.story',
  password: '123456',
  business_owner: false
)
puts 'Content creator Oliver created'

# Seed business
puts 'Creating users'
Business.create(
  name: 'Huilo Huilo',
  description: 'We are a biological reserve committed to sustainable travel.',
  website: 'https://huilohuilo.com/en/',
  user_id: hans_user.id
)
puts 'Huilo Huilo business created'

Business.create(
  name: 'Chucao',
  description: 'Handmade urban ponchos,100% Merino wool from Chile. We are a slow fashion brand.',
  website: 'https://www.instagram.com/chucao.design/',
  user_id: maria_user.id
)
puts 'Chucao business created'

Business.create(
  name: "Cheval d'Or",
  description: 'Author cuisine with a taste of Asia in the heart of the city of light.',
  website: 'https://chevaldorparis.com/',
  user_id: sara_user.id
)
puts "Cheval d'Or business created"
