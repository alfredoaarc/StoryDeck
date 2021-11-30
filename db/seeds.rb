# photos_urls = [
#   'https://res.cloudinary.com/novapixels/image/upload/v1637062972/ArtBnB/abhishek-upadhyay-VdEB-a__Y9A-unsplash_tusfzw.jpg',
#   'https://res.cloudinary.com/novapixels/image/upload/v1637062972/ArtBnB/marianna-smiley-jHOg6v6RIIs-unsplash_bgfh6i.jpg',
#   'https://res.cloudinary.com/novapixels/image/upload/v1637062964/ArtBnB/levi-meir-clancy-jZaQOzrC3XU-unsplash_w36osp.jpg']

puts 'Cleaning database'
Category.destroy_all
Story.destroy_all
Creator.destroy_all
Campaign.destroy_all
Story.destroy_all
Business.destroy_all
User.destroy_all

puts 'Database cleaned'

Category.create!(
  name: "18-24 yo"
)
Category.create!(
  name: "25-34 yo"
)
Category.create!(
  name: "35-44 yo"
)
Category.create!(
  name: "45-54 yo"
)
Category.create!(
  name: "55-64 yo"
)
Category.create!(
  name: "65+ yo"
)
Category.create!(
  name: "Pets 🐈"
)
Category.create!(
  name: "Cosmetics 💄"
)
Category.create!(
  name: "Lifestyle ☕️"
)
Category.create!(
  name: "Food 🍔"
)
Category.create!(
  name: "Travel ✈️"
)
Category.create!(
  name: "Fashion 💅"
)
Category.create!(
  name: "Music 🎶"
)
Category.create!(
  name: "Tech 💻"
)
Category.create!(
  name: "1,000 to 4,999 Followers"
)
Category.create!(
  name: "5,000 to 9,999 Followers"
)
Category.create!(
  name: "10K to 19,999 Followers"
)
Category.create!(
  name: "20K to 49,999 Followers"
)
Category.create!(
  name: "50K to 99,999 Followers"
)
Category.create!(
  name: "100K to 499,999 Followers"
)
Category.create!(
  name: "500K+ Followers"
)

# Seed users
# BUSINESS STUFF 👇
puts 'Creating users'
mo_user = User.create!(
  first_name: 'Monica',
  last_name: 'R',
  email: 'mo@email.story',
  password: '123456',
  business_owner: true
)
puts 'Business owner Monica created'

sara_user = User.create!(
  first_name: 'Sara',
  last_name: 'Chabeur',
  email: 'sara@email.story',
  password: '123456',
  business_owner: true
)
puts 'Business owner Sara created'

# Seed business
puts 'Creating businesses'

huilo_huilo = Business.create!(
  name: 'Huilo Huilo',
  description: 'We are a biological reserve committed to sustainable travel.',
  website: 'https://huilohuilo.com/en/',
  user_id: sara_user.id
)
story_huilo_huilo = Story.create!(
  title: "New trail open, see the volcano!",
  description: "A truly unique chance to see the wildlife up close",
  business: huilo_huilo,
  published: true
)
story_huilo_huilo.categories << Category.all.sample
puts 'Huilo Huilo business and story created'

chucao = Business.create!(
  name: 'Chucao',
  description: 'Handmade urban ponchos,100% Merino wool from Chile. We are a slow fashion brand.',
  website: 'https://www.instagram.com/chucao.design/',
  user_id: mo_user.id
)
story_chucao = Story.create!(
  title: "New collection of Ponchos, get yours now!",
  description: "New awesome season collection, don't wait too long, get 'em while they're hot!",
  business: chucao,
  published: true
)
story_chucao.categories << Category.all.sample
#PHOTO CODE TO BE ADDED
puts 'Chucao business and story created'

cheval_dor = Business.create!(
  name: "Cheval d'Or",
  description: "Author cuisine with a taste of Asia in the heart of the city of light.",
  website: "https://chevaldorparis.com/",
  user_id: mo_user.id
)
story_cheval_dor = Story.create!(
  title: "New Asian brunch, ALL YOU CAN EAT!",
  description: "Shrimps, duck, porc, all the spring rolls!",
  business: cheval_dor,
  published: true
)
story_cheval_dor.categories << Category.find_by(name: "Food 🍔")
story_cheval_dor.categories << Category.find_by(name: "Lifestyle ☕️")
puts "Cheval d'Or business created"

# CRAETORS HERE 👇
javiera_user = User.create!(
  first_name: 'Javiera',
  last_name: 'Pinto',
  email: 'javiera@email.story',
  password: '123456',
  business_owner: false
)
creator_javiera = Creator.create!(
  stage_name: "The Cookbook",
  user: javiera_user,
  description: "The art of becoming a domestic cooking Godess",
  location: "Santiago, Chile",
  website: "www.cookbook.xyz/javiera"
)
creator_javiera.categories << Category.find_by(name: "Food 🍔")
creator_javiera.categories << Category.find_by(name: "1,000 to 4,999 Followers")
# ATTACH PHOTOS!!
puts 'Content creator Javiera created'

monica_user = User.create!(
  first_name: 'Monica',
  last_name: 'Alicante',
  email: 'monica@email.story',
  password: '123456',
  business_owner: false
)
creator_monica = Creator.create!(
  stage_name: "MonicaKatz",
  user: monica_user,
  description: "Have a fun time in Fluffytown with the Cat Crew",
  location: "Brussels",
  website: "www.monicaskatx.org"
)
creator_monica.categories << Category.find_by(name: "Pets 🐈")
creator_monica.categories << Category.find_by(name: "10K to 19,999 Followers")
puts 'Content creator Monica created'


damian_user = User.create!(
  first_name: 'Damian',
  last_name: 'Rogers',
  email: 'damian@email.story',
  password: '123456',
  business_owner: false
)
creator_damian = Creator.create!(
  stage_name: "RubyDamian",
  user: damian_user,
  description: "Learn to code with Damian",
  location: "Madrid",
  website: "www.damianscode.io"
)
creator_damian.categories << Category.find_by(name: "Tech 💻")
creator_damian.categories << Category.find_by(name: "Music 🎶")
puts 'Content creator Damian created'

alicia_user = User.create!(
  first_name: 'Alicia',
  last_name: 'Beatle',
  email: 'alicia@email.story',
  password: '123456',
  business_owner: false
)
puts 'Content creator Alicia created'
gonzalo_user = User.create!(
  first_name: 'Gonzalo',
  last_name: 'Pharrell',
  email: 'gonzalo@email.story',
  password: '123456',
  business_owner: false
)
puts 'Content creator Gonzalo created'
oliver_user = User.create!(
  first_name: 'Oliver',
  last_name: 'Junior',
  email: 'oliver@email.story',
  password: '123456',
  business_owner: false
)
puts 'Content creator Oliver created'
