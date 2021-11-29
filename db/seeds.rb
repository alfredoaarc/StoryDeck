# photos_urls = [
#   'https://res.cloudinary.com/novapixels/image/upload/v1637062972/ArtBnB/abhishek-upadhyay-VdEB-a__Y9A-unsplash_tusfzw.jpg',
#   'https://res.cloudinary.com/novapixels/image/upload/v1637062972/ArtBnB/marianna-smiley-jHOg6v6RIIs-unsplash_bgfh6i.jpg',
#   'https://res.cloudinary.com/novapixels/image/upload/v1637062964/ArtBnB/levi-meir-clancy-jZaQOzrC3XU-unsplash_w36osp.jpg']

puts 'Cleaning database'
Story.destroy_all
Business.destroy_all
User.destroy_all

puts 'Database cleaned'

# Seed users
puts 'Creating users'
mo_user = User.create(
  first_name: 'Monica',
  last_name: 'R',
  email: 'mo@email.story',
  password: '123456',
  business_owner: true
)
puts 'Business owner Monica created'
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

huilo_huilo = Business.create(
  name: 'Huilo Huilo',
  description: 'We are a biological reserve committed to sustainable travel.',
  website: 'https://huilohuilo.com/en/',
  user_id: sara_user.id
)
puts 'Huilo Huilo business created'

Business.create(
  name: 'Chucao',
  description: 'Handmade urban ponchos,100% Merino wool from Chile. We are a slow fashion brand.',
  website: 'https://www.instagram.com/chucao.design/',
  user_id: mo_user.id
)
puts 'Chucao business created'

cheval_dor = Business.create(
  name: "Cheval d'Or",
  description: 'Author cuisine with a taste of Asia in the heart of the city of light.',
  website: 'https://chevaldorparis.com/',
  user_id: mo_user.id
)
puts "Cheval d'Or business created"

# Seed stories

Story.create(
  title: "New trail available",
  description: 'We are pleased to announce that a new 4h trail is now open, to take our visitors to the two sister lakes on top of the Mocho volcano. Welcome adventurers!',
  business: hans_business,
  published: true
)


Category.create!(
  name: "18-24"
)
Category.create!(
  name: "25-34"
)
Category.create!(
  name: "35-44"
)
Category.create!(
  name: "45-54"
)
Category.create!(
  name: "55-64"
)
Category.create!(
  name: "65+"
)
Category.create!(
  name: "Cosmetics"
)
Category.create!(
  name: "Lifestyle"
)
Category.create!(
  name: "food"
)
Category.create!(
  name: "Travel"
)
Category.create!(
  name: "Fashion"
)
Category.create!(
  name: "Music"
)
Category.create!(
  name: "Tech"
)
Category.create!(
  name: "1,000 to 4,999"
)
Category.create!(
  name: "5,000 to 9,999"
)
Category.create!(
  name: "10K to 19,999"
)
Category.create!(
  name: "20K to 49,999"
)
Category.create!(
  name: "50K to 99,999"
)
Category.create!(
  name: "100K to 499,999"
)
Category.create!(
  name: "500K+"
)
Category.create!(
  name: "food"
)
Category.create!(
  name: "Travel"
)
Category.create!(
  name: "Fashion"
)
Category.create!(
  name: "Music"
)

Story.create(
  title: "Sunday Brunch Day",
  description: "We are launching a new brunch menu composed with a wide variety of traditional asians breakfasts. We're looking for two food bloggers to record and share the avant-premiere brunch degustation and announce the first Sunday Brunch Day of this summer season.",
  published: false,
  business_id: cheval_dor.id
)

Story.create(
  title: "New trail available",
  description: "We are pleased to announce that a new 4h trail is now open, to take our visitors to the two sister lakes on top of the Mocho volcano. Welcome adventurers!",
  published: false,
  business_id: huilo_huilo.id
)
