class Restaurant < ActiveRecord::Base
  SEARCHABLE_ATTRIBUTES = [:location, :cuisine, :price]

  LOCATIONS = ['Alexandra Road', 'Anson Road', 'Balmoral', 'Beach Road', 'Bencoolen', 'Boat Quay', 'Bugis', 'Bukit Timah', 'Buona Vista', 'City Hall', 'Dover', 'Eunos', 'Farrer Park', 'Geylang', 'Grange Road', 'Havelock Road', 'High Street', 'Holland Village', 'Kallang', 'Kembangan', 'Keppel Bay', 'Killiney', 'Little India', 'Macpherson', 'Marina Square', 'Marine Parade', 'Mount Faber', 'Neil Road', 'Newton', 'North Bridge Road', 'Orchard', 'Oxley', 'Pasir Panjang', 'Paya Lebar', 'Potong Pasir', 'Queenstown', 'Raffles Place', 'River Valley', 'Rochor', 'Sentosa', 'Serangoon Road', 'Shenton Way', 'Suntec City', 'Tanglin Road', 'Tanjong Pagar', 'Tanjong Rhu', 'Telok Blangah', 'Tiong Bahru', 'West Coast'].sort
  CUISINES = ['Japanese', 'Chinese', 'Singaporean', 'Vietnamese', 'French', 'Italian', 'American', 'Taiwanese', 'Korean', 'Thai', 'Spanish'].sort
  PRICES = [
    ['$', 1],
    ['$$', 2],
    ['$$$', 3],
    ['$$$$', 4],
    ['$$$$$', 5],
  ]

  has_many :feasts

  def display_price
    price.times.map { '$' }.join
  end

  def to_s
    name
  end

  COVER_URL = [
    'https://lh3.ggpht.com/-2WMltLZiXHU/UH6g3jrmuzI/AAAAAAAAEVs/kAEYRsYrK6Q/s1600/Equinox+SG.jpg',
    'http://retaildesignblog.net/wp-content/uploads/2013/09/Kaiseki-Yoshiyuki-restaurant-by-B3-Designers-Singapore.jpg',
    'http://static.asiawebdirect.com/m/phuket/portals/www-singapore-com/homepage/food-dining/TopPageContent/0/BigImage/singapore-dining-740.jpg',
    'http://www.district10.com.sg/img/uesquare/201311DSC_5941.jpg',
    'http://www.district10.com.sg/img/uesquare/201311PrivateDiningRoom.jpg',
    'http://www.district10.com.sg/img/uesquare/201311OutdoorArea2.jpg',
    'http://www.district10.com.sg/img/uesquare/201311TheBarArea.jpg',
    'http://www.district10.com.sg/img/uesquare/201311TheDiningRoom.jpg',
    'http://www.district10.com.sg/img/starvista/tsv3.jpg',
    'http://www.district10.com.sg/img/starvista/tsv7.jpg'
  ].shuffle

  def cover_url
    if id.present?
      COVER_URL[id % COVER_URL.length]
    end
  end
end
