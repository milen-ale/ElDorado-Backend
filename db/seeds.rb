# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cars =Car.create([
  {
    name: 'Range Rover',
    image: 'https://www.landroverusa.com/content/dam/landroverusa/vehicles/range-rover/2021/overview/overview-2021-range-rover-01.jpg',
    model: '2021',
    daily_price: 200,
    description: 'The Range Rover is a full-size luxury SUV produced by British car maker Land Rover, a marque of Jaguar Land Rover. The Range Rover is the flagship model of the marque, and has been in continuous production since 1970.'
  },
  {
    name: 'Rivian R1T',
    image: 'https://www.rivian.com/wp-content/uploads/2020/06/2021-R1T-Exterior-1.jpg',
    model: '2021',
    daily_price: 200,
    description: 'The Rivian R1T is an all-electric pickup truck that is being developed by Rivian Automotive. The R1T is Rivian’s first vehicle, and is expected to be released in 2021.'
  },
  {
    name: 'BMW 3 Series',
    image: 'https://www.bmw.com/content/dam/bmw/common/all-models/3-series/sedan/2021/navigation/BMW-3-Series-Sedan-2021-Exterior-01.jpg/_jcr_content/renditions/cq5dam.resized.img.585.low.time1594732800000.jpg',
    model: '2021',
    daily_price: 150,
    description: 'The BMW 3 Series is a compact executive car manufactured by the German automaker BMW since May 1975. It is the successor to the 02 Series and has been produced in six different generations.'
  },
  {
    name: 'Audi',
    image: 'https://www.audi.com/content/dam/gbp2/experience-audi/audi-models/a4-saloon/2021/1920x1080/1920x1080_A4_Saloon_2021_01.jpg',
    model: '2021',
    daily_price: 100,
    description: 'The Audi A4 is a line of compact executive cars produced since 1994 by the German car manufacturer Audi, a subsidiary of the Volkswagen Group. The A4 has been built in five generations and is based on the Volkswagen Group B platform.'
  },
  {
    name: 'Tesla',
    image: 'https://www.tesla.com/sites/default/files/modelsx-new/social/model-x-social.jpg',
    model: '2021',
    daily_price: 200,
    description: 'The Tesla Model X is a mid-size all-electric luxury crossover SUV made by Tesla, Inc. It is the first vehicle in Tesla\'s lineup to be built on the company\'s third-generation platform, which is shared with the Model S and Model 3.'
  },
  {
    name: 'Ford',
    image: 'https://www.ford.com/cmslibs/content/dam/vdm_ford/live/en_us/ford/nameplate/f-150/2021/collections/01_images/2021-f-150-4x4-supercrew-lariat-ecoboost-3.5l-v6-gas-engine-2.jpg/_jcr_content/renditions/cq5dam.resized.img.585.low.time1594732800000.jpg',
    model: '2022',
    daily_price: 100,
    description: 'The Ford F-Series is a series of light-duty trucks and medium-duty trucks (Class 2-7) that have been marketed and manufactured by Ford Motor Company since 1948. While most variants of the F-Series trucks are full-size pickup trucks, the F-Series also includes chassis cab trucks and commercial vehicles.'
  },
  {
    name: 'Ferrari',
    image: 'https://www.ferrari.com/content/dam/ferrari/brand/2021/2021-ferrari-812-gts-1920x1080.jpg',
    model: '2021',
    daily_price: 1000,
    description: 'The Ferrari 812 Superfast is a front mid-engine, rear-wheel-drive grand tourer produced by Ferrari. It is the successor to the Ferrari F12berlinetta and was unveiled at the 2017 Geneva Motor Show.'
  },
  {
    name: 'Porsche',
    image: 'https://www.porsche.com/usa/models/911/coupe/911-coupe-992/2021/911-coupe-992-modelimage-sideshot-1920x1080px-1920x1080px.jpg',
    model: '2021',
    daily_price: 200,
    description: 'The Porsche 911 is a two-door, 2+2 high performance rear-engined sports car made since 1963 by Porsche AG of Stuttgart, Germany. It has a rear-mounted flat-six engine and all round independent suspension.'
  },
  {
    name: 'Lexus',
    image: 'https://www.lexus.com/content/dam/lexus/en_us/models/ux/2021/ux-2021-modelimage-sideshot-1920x1080px-1920x1080px.jpg',
    model: '2021',
    daily_price: 100,
    description: 'The Lexus UX is a subcompact luxury crossover SUV manufactured by Toyota\'s luxury brand Lexus. It is the smallest SUV in the Lexus lineup, slotting below the Lexus NX. The UX was unveiled at the 2018 Beijing Auto Show.'
  },
  {
    name: 'Pagani',
    image: 'https://www.pagani.com/content/dam/pagani/brand/2021/2021-pagani-huayra-roadster-1920x1080.jpg',
    model: '2021',
    daily_price: 1000,
    description: 'The Pagani Huayra is a mid-engined sports car produced by Italian automotive manufacturer Pagani. The Huayra was first shown at the 2011 Geneva Motor Show and was officially unveiled at the 2012 Geneva Motor Show.'
  },
  {
    name: 'Maserati',
    image: 'https://www.maserati.com/content/dam/maserati/brand/2021/2021-maserati-ghibli-1920x1080.jpg',
    model: '2021',
    daily_price: 200,
    description: 'The Maserati Ghibli is a mid-size luxury sports sedan produced by Italian automobile manufacturer Maserati. The Ghibli is the first Maserati to be available with all-wheel drive and the first to be available with a diesel engine.'
  },
  {
    name: 'Lamborghini',
    image: 'https://www.lamborghini.com/content/dam/lamborghini/brand/2021/2021-lamborghini-aventador-1920x1080.jpg',
    model: '2021',
    daily_price: 1000,
    description: 'The Lamborghini Aventador is a mid-engined sports car produced by the Italian automotive manufacturer Lamborghini. The Aventador is the successor to the long-running Lamborghini Murciélago.'
  },
  {
    name: 'Bugatti',
    image: 'https://www.bugatti.com/content/dam/bugatti/brand/2021/2021-bugatti-chiron-sport-1920x1080.jpg',
    model: '2021',
    daily_price: 1000,
    description: 'The Bugatti Chiron is a mid-engined two-seated sports car developed and manufactured in Molsheim, France, by Bugatti Automobiles S.A.S. as the successor to the Bugatti Veyron.'
  },
  {
    name: 'Rolls-Royce',
    image: 'https://www.rolls-roycemotorcars.com/content/dam/rolls-royce/motorcars/brand/2021/2021-rolls-royce-phantom-1920x1080.jpg',
    model: '2021',
    daily_price: 1000,
    description: 'The Rolls-Royce Phantom is a British luxury saloon manufactured by Rolls-Royce Motor Cars. The Phantom is the flagship model of Rolls-Royce and has been in continuous production for more than 90 years.'
  },
  {
    name: 'Bentley',
    image: 'https://www.bentleymotors.com/content/dam/bentley/brand/2021/2021-bentley-continental-gt-1920x1080.jpg',
    model: '2021',
    daily_price: 1000,
    description: 'The Bentley Continental GT is a grand tourer produced by British automaker Bentley Motors since 2003. It is the first car released by Bentley under Volkswagen AG management, after the company\'s acquisition of the British automaker in 1998.'
  },
  {
    name: 'Aston Martin',
    image: 'https://www.astonmartin.com/content/dam/astonmartin/brand/2021/2021-aston-martin-db11-1920x1080.jpg',
    model: '2021',
    daily_price: 1000,
    description: 'The Aston Martin DB11 is a grand tourer manufactured by British luxury car manufacturer Aston Martin. The DB11 is the successor to the DB9 and was unveiled at the 2016 Geneva Motor Show.'
  },
  {
    name: 'Cadillac',
    image: 'https://www.cadillac.com/content/dam/cadillac/brand/2021/2021-cadillac-xt6-1920x1080.jpg',
    model: '2021',
    daily_price: 1000,
    description: 'The Cadillac XT6 is a mid-size luxury crossover SUV manufactured by General Motors. It is the first three-row crossover SUV from Cadillac, and is based on the GM Lambda platform.'
  },
  {
    name: 'Chevrolet',
    image: 'https://www.chevrolet.com/content/dam/chevrolet/brand/2021/2021-chevrolet-corvette-1920x1080.jpg',
    model: '2021',
    daily_price: 1000,
    description: 'The Chevrolet Corvette, known colloquially as the Vette or Chevy Corvette, is a front engine, rear drive, two-door, two-passenger sports car manufactured and marketed by Chevrolet across more than sixty years of production and seven design generations.'
  },
  {
    name: 'Chrysler',
    image: 'https://www.chrysler.com/content/dam/chrysler/brand/2021/2021-chrysler-pacifica-1920x1080.jpg',
    model: '2021',
    daily_price: 1000,
    description: 'The Chrysler Pacifica is a minivan manufactured by FCA US LLC (formerly Chrysler Group, LLC), and marketed under the Chrysler, Dodge, and Plymouth brand names. The Pacifica is the first minivan offered in North America with an available hybrid powertrain.'
  },
  {
    name: 'Dodge',
    image: 'https://www.dodge.com/content/dam/dodge/brand/2021/2021-dodge-challenger-1920x1080.jpg',
    model: '2021',
    daily_price: 1000,
    description: 'The Dodge Challenger is the name of three different generations of automobiles (two of those being pony cars) produced by American automobile manufacturer Dodge. However, the first use of the Challenger name by Dodge was in 1959 for marketing a "value version" of the full-sized Coronet Silver Challenger.'
  },
  {
    name: 'Alfa Romeo',
    image: 'https://www.alfaromeousa.com/content/dam/alfaromeousa/brand/2021/2021-alfa-romeo-stelvio-1920x1080.jpg',
    model: '2021',
    daily_price: 1000,
    description: 'The Alfa Romeo Stelvio is a compact luxury crossover SUV manufactured by Italian automaker Alfa Romeo. The Stelvio is Alfa Romeo\'s first SUV and is based on the Giorgio platform, which underpins the Alfa Romeo Giulia.'
  },
  {
    name: 'McLaren',
    image: 'https://www.mclaren.com/content/dam/mclaren/brand/2021/2021-mclaren-720s-1920x1080.jpg',
    model: '2021',
    daily_price: 1000,
    description: 'The McLaren 720S is a British sports car produced by McLaren Automotive. The 720S is the second model in the Super Series, sitting below the McLaren P1 and above the McLaren 570S.'
  },
  {
    name: 'Mercedes-Benz',
    image: 'https://www.mbusa.com/content/dam/mbusa/brand/2021/2021-mercedes-benz-gls-1920x1080.jpg',
    model: '2021',
    daily_price: 1000,
    description: 'The Mercedes-Benz GLS-Class is a full-size luxury SUV produced by the German automaker Mercedes-Benz since 2006. The first generation (X164) was launched in 2006 as the successor to the Mercedes-Benz GL-Class (X164).'
  }
])
=======
Car.create(
  name: 'BMW 3 Series',
  image: 'https://www.bmw.com/content/dam/bmw/common/all-models/3-series/sedan/2021/navigation/BMW-3-Series-Sedan-2021-Exterior-01.jpg/_jcr_content/renditions/cq5dam.resized.img.585.low.time1594732800000.jpg',
  model: '2021',
  daily_price: 150,
  description: 'The BMW 3 Series is a compact executive car manufactured by the German automaker BMW since May 1975. It is the successor to the 02 Series and has been produced in six different generations.'
)
