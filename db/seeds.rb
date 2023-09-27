require 'open-uri'

Booking.destroy_all
Room.destroy_all
Hotel.destroy_all
User.destroy_all

User.create!(
  first_name: Cedric,
  last_name: Garcia,
  email: "#{first_name.downcase}@email.com",
  password: "password"
)

hotel = Hotel.new(
  address: '305 Party Avenue, Miami',
  name: "Pitbull's Hotel Motel",
  price: rand(15..100),
  description: "Mr. Worldwide welcomes you to the hottest hotel in town! Get ready to dance all night, and don't forget your passport because this hotel is all about international fun and flair. Dale!")

file = URI.open("https://d.otcdn.com/imglib/hotelfotos/7/170/hotel-mediterran-budapest-20220211154318.jpeg")
hotel.photo.attach(io: file, filename: "Pitbull's Hotel Motel", content_type: "image/jpeg")
hotel.save

hotel = Hotel.new(
  address: '1230 J St, Sacramento',
  name: "Hotel California",
  price: rand(15..100),
  description: "Check-in any time you like, but you can never leave... without a souvenir, that is! Our staff is on 'Hotel California time,' where relaxation lasts forever")

file = URI.open("https://c.otcdn.com/imglib/hotelfotos/7/153/hotel-museum-budapest-20221208130109607100.jpg")
hotel.photo.attach(io: file, filename: "Hotel California", content_type: "image/jpg")
hotel.save


hotel = Hotel.new(
  address: '55 Lonely Avenue, Memphis',
  name: "Heartbreak Hotel",
  price: rand(15..100),
  description: "Checking in is easy, but checking out is hard to do. We've got the blues, rock 'n' roll, and a heart-shaped bed for anyone who's ever felt like they're all shook up")

file = URI.open("https://d.otcdn.com/imglib/hotelfotos/7/221/aquaworld-resort-budapest-20220204121354.jpeg")
hotel.photo.attach(io: file, filename: "Heartbreak Hotel", content_type: "image/jpeg")
hotel.save

hotel = Hotel.new(
  address: 'Strada Regele Ferdinand 20, Cluj-Napoca',
  name: "Hotel Transylvania",
  price: rand(15..100),
  description: "The only hotel where you'll be batty for our accommodations! Join Drac and his monstrous crew for a spooktacular stay, where the only thing that bites is our sense of humor")

file = URI.open("https://b.otcdn.com/imglib/hotelfotos/7/164/corinthia-hotel-budapest-047.jpg")
hotel.photo.attach(io: file, filename: "Hotel Transylvania", content_type: "image/jpg")
hotel.save

hotel = Hotel.new(
  address: 'József krt. 5, Budapest',
  name: "Grand Hotel Budapest",
  price: rand(15..100),
  description: "Experience the whimsy and charm of a hungarian getaway! Our hotel staff is trained in the art of eccentricity, and each room is a masterpiece of pastel perfection")

file = URI.open("https://d.otcdn.com/imglib/hotelfotos/7/221/marmara-hotel-budapest-048.jpg")
hotel.photo.attach(io: file, filename: "Grand Hotel Budapest", content_type: "image/jpg")
hotel.save

hotel = Hotel.new(
  address: '12 Tundra Way, Nunavut',
  name: "Polaris Pinnacle Lodge",
  price: rand(15..100),
  description: "This remote haven provides a unique blend of rustic comfort and natural beauty for those seeking an unforgettable Arctic experience")

file = URI.open("https://d.otcdn.com/imglib/hotelfotos/7/050/hotel-lapland-s-sky-ounasvaara-rovaniemi-20201025111132.jpg")
hotel.photo.attach(io: file, filename: "Polaris Pinnacle Lodge", content_type: "image/jpg")
hotel.save

hotel = Hotel.new(
  address: '237 Isolated Way, Timberline',
  name: "Overlook Hotel",
  price: rand(15..100),
  description: "All work and no play? Not at the Overlook! Enjoy a winter wonderland retreat, where every door has a story and our hedge maze will leave you feeling lost")

file = URI.open("https://a.otcdn.com/imglib/hotelfotos/7/260/hotel-super-8-denver-international-airport-031.jpg")
hotel.photo.attach(io: file, filename: "Overlook Hotel", content_type: "image/jpg")
hotel.save

hotel = Hotel.new(
  address: '12 Norman Lane, Fairvale',
  name: "Bates Motel",
  price: rand(15..100),
  description: "Welcome to the Bates Motel, where we go the extra mile to make you feel at home... even if that home is a little bit... unsettling")

file = URI.open("https://c.otcdn.com/imglib/hotelfotos/7/226/hotel-quality-inn-suites-denver-international-airport-20230418100018171400.jpg")
hotel.photo.attach(io: file, filename: "Bates Motel", content_type: "image/jpg")
hotel.save

hotel = Hotel.new(
  address: '22 Hobbiton Hill, Shireville',
  name: "The Green Dragon Inn",
  price: rand(15..100),
  description: "A hobbit's haven and a wizard's watering hole! Join Frodo and friends for second breakfast, pints of ale, and cozy fireside tales of adventure")

file = URI.open("https://cdn.getyourguide.com/img/tour/641ba333d8d46.jpeg/98.jpg")
hotel.photo.attach(io: file, filename: "The Green Dragon Inn", content_type: "image/jpg")
hotel.save

hotel = Hotel.new(
  address: '6 Salsa Street, Cancun',
  name: "Mariachi Manor",
  price: rand(15..100),
  description: "Experience the vibrant rhythms of Mexico at the Mariachi Manor! Our hotel is so lively; you'll feel like you're always in the middle of a fiesta. ¡Olé!")

file = URI.open("https://d.otcdn.com/imglib/almacen_fotos/geo_destinos_385x213/30066_cuba/30066_43423_22.jpg")
hotel.photo.attach(io: file, filename: "Mariachi Manor", content_type: "image/jpg")
hotel.save

hotel = Hotel.new(
  address: '4 Jingshan Front St, Dongcheng, Beijing',
  name: "Forbidden City Palace",
  price: rand(15..100),
  description: "Nestled within the heart of Beijing, where ancient history and imperial grandeur converge, the Forbidden Palace stands as a testament to timeless elegance")

file = URI.open("https://cdn.getyourguide.com/img/tour/6441f87ecca2a.jpeg/97.jpg")
hotel.photo.attach(io: file, filename: "Forbidden City Palace", content_type: "image/jpg")
hotel.save

hotel = Hotel.new(
  address: '54 Moon Forrest Lane, Endor',
  name: "Death Star",
  price: rand(15..100),
  description: "Feel the power of the dark side in our 'stellar' accommodations. With a view that's truly 'out of this world,' we promise our rooms won't make you 'explode' with anger")

file = URI.open("https://m.media-amazon.com/images/I/81zM4Q27GxL._AC_SL1500_.jpg")
hotel.photo.attach(io: file, filename: "Death Star", content_type: "image/jpg")
hotel.save
