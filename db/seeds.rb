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
  name: "500K+"
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


# CREATORS HERE 👇
photo_javiera = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638279340/Story%20Deck/javiera_prjbsg.jpg")
photo2_javiera = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638279803/Story%20Deck/food_javiera_xrkcwi.jpg")

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

creator_javiera.photos.attach(io: photo_javiera, filename: 'nes.jpg', content_type: 'image/jpg')
creator_javiera.photos.attach(io: photo2_javiera, filename: 'nes.jpg', content_type: 'image/jpg')
creator_javiera.categories << Category.find_by(name: "Food 🍔")
creator_javiera.categories << Category.find_by(name: "1,000 to 4,999 Followers")

# ATTACH PHOTOS!!
puts 'Content creator Javiera created'

photo_monica = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638279340/Story%20Deck/monica_fyrwat.jpg")
photo2_monica = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638279803/Story%20Deck/cats_monica_sxzf41.jpg")
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
  website: "www.monicaskatz.org"
)

creator_monica.photos.attach(io: photo_monica, filename: 'nes.jpg', content_type: 'image/jpg')
creator_monica.photos.attach(io: photo2_monica, filename: 'nes.jpg', content_type: 'image/jpg')
creator_monica.categories << Category.find_by(name: "Pets")
creator_monica.categories << Category.find_by(name: "10K to 19,999")
creator_monica.categories << Category.find_by(name: "65+")

creator_monica.categories << Category.find_by(name: "Pets 🐈")
creator_monica.categories << Category.find_by(name: "10K to 19,999 Followers")
puts 'Content creator Monica created'


puts 'Content creator Monica created'

photo_andrea = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638279340/Story%20Deck/andrea_wtalfv.jpg")
photo2_andrea = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638279803/Story%20Deck/tech_andrea_mh9nnc.jpg")
andrea_user = User.create!(
  first_name: 'Andrea',
  last_name: 'Rogers',
  email: 'andrea@email.story',
  password: '123456',
  business_owner: false
)


creator_andrea = Creator.create!(
  stage_name: "RubyAndrea",
  user: andrea_user,
  description: "You can pretty much learn to code pretty much with Andrea",
  location: "Porto",
  website: "www.andreascode.io"
)
creator_andrea.photos.attach(io: photo_andrea, filename: 'nes.jpg', content_type: 'image/jpg')
creator_andrea.photos.attach(io: photo2_andrea, filename: 'nes.jpg', content_type: 'image/jpg')
creator_andrea.categories << Category.find_by(name: "Tech 💻")
creator_andrea.categories << Category.find_by(name: "500K+")
creator_andrea.categories << Category.find_by(name: "18-24")

puts 'Content creator Andrea created'


photo_pascal = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638279340/Story%20Deck/pascal_bg4vd0.jpg")
photo2_pascal = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638279803/Story%20Deck/fashion_pascal_kug6lc.jpg")
pascal_user = User.create!(
  first_name: 'Pascal',
  last_name: 'Pichai',
  email: 'pascal@email.story',
  password: '123456',
  business_owner: false
)
creator_pascal = Creator.create!(
  stage_name: "FashionPascal",
  user: pascal_user,
  description: "I learned how to dress in India.",
  location: "India",
  website: "www.indipascal.com"
)
creator_pascal.photos.attach(io: photo_pascal, filename: 'nes.jpg', content_type: 'image/jpg')
creator_pascal.photos.attach(io: photo2_pascal, filename: 'nes.jpg', content_type: 'image/jpg')
creator_pascal.categories << Category.find_by(name: "Lifestyle ☕️")
creator_pascal.categories << Category.find_by(name: "Fashion 💅")
creator_pascal.categories << Category.find_by(name: "18-24")
creator_pascal.categories << Category.find_by(name: "25-34")
creator_pascal.categories << Category.find_by(name: "1,000 to 4,999")

puts 'Content creator Pascal created'

photo_gonzalo = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638279340/Story%20Deck/gonzalo_f0fwur.jpg")
photo2_gonzalo = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638279803/Story%20Deck/cosmetics_gon_tea45p.jpg")
gonzalo_user = User.create!(
  first_name: 'Gonzalo',
  last_name: 'De la Mancha',
  email: 'gonzalo@email.story',
  password: '123456',
  business_owner: false
)

creator_gonzalo = Creator.create!(
  stage_name: "BeautyGon",
  user: gonzalo_user,
  description: "You know what I'm gonna make look pretty? Your face.",
  location: "Madrid",
  website: "www.beautygon.com"
)
creator_gonzalo.photos.attach(io: photo_gonzalo, filename: 'nes.jpg', content_type: 'image/jpg')
creator_gonzalo.photos.attach(io: photo2_gonzalo, filename: 'nes.jpg', content_type: 'image/jpg')
creator_gonzalo.categories << Category.find_by(name: "Lifestyle ☕️")
creator_gonzalo.categories << Category.find_by(name: "Cosmetics 💄")
creator_gonzalo.categories << Category.find_by(name: "55-64")
creator_gonzalo.categories << Category.find_by(name: "25-34")
creator_gonzalo.categories << Category.find_by(name: "1,000 to 4,999")

puts 'Content creator Gonzalo created'

photo_filippo = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638279340/Story%20Deck/filippo_rhyezf.jpg")
photo2_filippo = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638279804/Story%20Deck/pasta_filippo_lc9cki.jpg")
filippo_user = User.create!(
  first_name: 'Filippo',
  last_name: 'Della Carbonara',
  email: 'filippo@email.story',
  password: '123456',
  business_owner: false
)

creator_filippo = Creator.create!(
  stage_name: "Filipasta",
  user: filippo_user,
  description: "It's okay if you eat pizza with pineapple, just don't send pics.",
  location: "Milano",
  website: "www.filipasta.it"
)
creator_filippo.photos.attach(io: photo_filippo, filename: 'nes.jpg', content_type: 'image/jpg')
creator_filippo.photos.attach(io: photo2_filippo, filename: 'nes.jpg', content_type: 'image/jpg')
creator_filippo.categories << Category.find_by(name: "Lifestyle ☕️")
creator_filippo.categories << Category.find_by(name: "Food 🍔")
creator_filippo.categories << Category.find_by(name: "25-34")
creator_filippo.categories << Category.find_by(name: "1,000 to 4,999")

puts 'Content creator Filippo created'
