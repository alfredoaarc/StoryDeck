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

Business.create!(
  name: 'Locomo-pizza',
  description: 'Come and try our amazing Italian style pizzas in a Wagon.',
  website: 'https://www.locomo-pizzas.com/',
  user_id: mo_user.id
)
puts "Locommo-pizzas created"
# story_chucao = Story.create!(
  # title: "New collection of Ponchos, get yours now!",
  # description: "New awesome season collection, don't wait too long, get 'em while they're hot!",
  # business: chucao,
  # published: true
# )
# story_chucao.categories << Category.all.sample
#PHOTO CODE TO BE ADDED
# puts 'Chucao business and story created'

cheval_dor = Business.create!(
  name: "Cheval d'Or",
  description: "Author cuisine with a taste of Asia in the heart of the city of light.",
  website: "https://chevaldorparis.com/",
  user_id: sara_user.id
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

# ________________________________


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
  location: "Madrid, Spain",
  website: "www.cookbook.xyz/javiera"
)

creator_javiera.photos.attach(io: photo_javiera, filename: 'nes.jpg', content_type: 'image/jpg')
creator_javiera.photos.attach(io: photo2_javiera, filename: 'nes.jpg', content_type: 'image/jpg')
creator_javiera.categories << Category.find_by(name: "Music 🎶")
creator_javiera.categories << Category.find_by(name: "50K to 99,999 Followers")

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
creator_monica.categories << Category.find_by(name: "Pets 🐈")
creator_monica.categories << Category.find_by(name: "10K to 19,999 Followers")
creator_monica.categories << Category.find_by(name: "65+ yo")

creator_monica.categories << Category.find_by(name: "10K to 19,999 Followers")
puts 'Content creator Monica created'

photo_andrea = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638279340/Story%20Deck/andrea_wtalfv.jpg")
photo2_andrea = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638444205/Story%20Deck/m-s-meeuwesen-QYWYnzvPTAQ-unsplash_idv2no.jpg")
andrea_user = User.create!(
  first_name: 'Andrea',
  last_name: 'Montague',
  email: 'andrea@email.story',
  password: '123456',
  business_owner: false
)

creator_andrea = Creator.create!(
  stage_name: "AndreaDrinks",
  user: andrea_user,
  description: "You can pretty much drink pretty much with me.",
  location: "Madrid, Spain",
  website: "https://www.instagram.com/andreadrinks/"
)
creator_andrea.photos.attach(io: photo_andrea, filename: 'nes.jpg', content_type: 'image/jpg')
creator_andrea.photos.attach(io: photo2_andrea, filename: 'nes.jpg', content_type: 'image/jpg')
creator_andrea.categories << Category.find_by(name: "Food 🍔")
creator_andrea.categories << Category.find_by(name: "Lifestyle ☕️")
creator_andrea.categories << Category.find_by(name: "1,000 to 4,999 Followers")
creator_andrea.categories << Category.find_by(name: "18-24 yo")

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
creator_pascal.categories << Category.find_by(name: "Fashion 💅")

puts 'Content creator Pascal created'


photo_filippo = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638279340/Story%20Deck/filippo_rhyezf.jpg")
photo2_filippo = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638441897/Story%20Deck/7_kjy2u9.jpg")
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
  description: "You can't find good pasta in Madrid but it's okay, I'll just go back to Italy.",
  location: "Madrid, Spain",
  website: "www.instagram.com/filippomancini_/"
)
creator_filippo.photos.attach(io: photo_filippo, filename: 'nes.jpg', content_type: 'image/jpg')
creator_filippo.photos.attach(io: photo2_filippo, filename: 'nes.jpg', content_type: 'image/jpg')
creator_filippo.categories << Category.find_by(name: "Lifestyle ☕️")
creator_filippo.categories << Category.find_by(name: "Food 🍔")
creator_filippo.categories << Category.find_by(name: "25-34 yo")
creator_filippo.categories << Category.find_by(name: "1,000 to 4,999 Followers")

puts 'Content creator Filippo created'


photo_legna = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638441897/Story%20Deck/12_da7qh4.jpg")
photo2_legna = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638444394/Story%20Deck/jordane-mathieu-W1TOhhlbQpw-unsplash_hfswh8.jpg")
legna_user = User.create!(
  first_name: 'Legna',
  last_name: 'Chavez',
  email: 'legna@email.story',
  password: '123456',
  business_owner: false
)

creator_legna = Creator.create!(
  stage_name: "LegnaChocolat",
  user: legna_user,
  description: "I discovered Belgian chocolate two months ago and it changed my life.",
  location: "Madrid, Spain",
  website: "www.instagram.com/belgianchocolateschool/"
)
creator_legna.photos.attach(io: photo_legna, filename: 'nes.jpg', content_type: 'image/jpg')
creator_legna.photos.attach(io: photo2_legna, filename: 'nes.jpg', content_type: 'image/jpg')
creator_legna.categories << Category.find_by(name: "Lifestyle ☕️")
creator_legna.categories << Category.find_by(name: "Food 🍔")
creator_legna.categories << Category.find_by(name: "25-34 yo")
creator_legna.categories << Category.find_by(name: "1,000 to 4,999 Followers")

puts 'Content creator Legna created'

photo_ale = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638441896/Story%20Deck/6_ihwtja.jpg")
photo2_ale = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638441897/Story%20Deck/15_psnsvb.jpg")
ale_user = User.create!(
  first_name: 'Alejandro',
  last_name: 'Doria',
  email: 'ale@email.story',
  password: '123456',
  business_owner: false
)

creator_ale = Creator.create!(
  stage_name: "Alejandrini",
  user: ale_user,
  description: "In my country we eat tacos and I have a Netflix show called the Taco Chronicles. You should watch it!",
  location: "Madrid, Spain",
  website: "instagram.com/chronictacos/"
)
creator_ale.photos.attach(io: photo_ale, filename: 'nes.jpg', content_type: 'image/jpg')
creator_ale.photos.attach(io: photo2_ale, filename: 'nes.jpg', content_type: 'image/jpg')
creator_ale.categories << Category.find_by(name: "Lifestyle ☕️")
creator_ale.categories << Category.find_by(name: "Food 🍔")
creator_ale.categories << Category.find_by(name: "25-34 yo")
creator_ale.categories << Category.find_by(name: "1,000 to 4,999 Followers")

puts 'Content creator Ale created'

photo_gonzalo = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638441897/Story%20Deck/14_plyqgm.jpg")
photo2_gonzalo = URI.open("https://res.cloudinary.com/novapixels/image/upload/v1638441896/Story%20Deck/3_gwm7cb.jpg")
gonzalo_user = User.create!(
  first_name: 'Gonzalo',
  last_name: 'De la Mancha',
  email: 'gonzalo@email.story',
  password: '123456',
  business_owner: false
)

creator_gonzalo = Creator.create!(
  stage_name: "PizzaGon",
  user: gonzalo_user,
  description: "You know what is really yummy? Your face. Nah just kidding, pizzas.",
  location: "Madrid, Spain",
  website: "www.instagram.com/ltslopo/"
)
creator_gonzalo.photos.attach(io: photo_gonzalo, filename: 'nes.jpg', content_type: 'image/jpg')
creator_gonzalo.photos.attach(io: photo2_gonzalo, filename: 'nes.jpg', content_type: 'image/jpg')
creator_gonzalo.categories << Category.find_by(name: "Lifestyle ☕️")
creator_gonzalo.categories << Category.find_by(name: "Food 🍔")
creator_gonzalo.categories << Category.find_by(name: "55-64 yo")
creator_gonzalo.categories << Category.find_by(name: "25-34 yo")
creator_gonzalo.categories << Category.find_by(name: "1,000 to 4,999 Followers")

puts 'Content creator Gonzalo created'
