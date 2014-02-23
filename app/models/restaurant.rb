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
    'http://www.district10.com.sg/img/starvista/tsv7.jpg',
    'https://scontent-a-pao.xx.fbcdn.net/hphotos-ash3/t31/1269020_10201014479837695_340929700_o.jpg',
    'https://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-ash3/t31/922110_4490308909322_1443370088_o.jpg',
    'https://scontent-a-pao.xx.fbcdn.net/hphotos-prn1/t1/p180x540/564614_10200576994860844_610310968_n.jpg',
    'https://scontent-b-pao.xx.fbcdn.net/hphotos-frc3/t1/q71/s720x720/1450210_10200497576835443_1391164948_n.jpg',
    'https://scontent-b-pao.xx.fbcdn.net/hphotos-ash3/t1/p180x540/1385127_10200328417206558_1055145704_n.jpg',
    'https://scontent-b-pao.xx.fbcdn.net/hphotos-frc3/t1/p180x540/1003649_4643039127482_350356317_n.jpg',
    'https://scontent-b-pao.xx.fbcdn.net/hphotos-frc3/t31/s720x720/891688_4379605861815_2055460588_o.jpg',
    'https://scontent-b-pao.xx.fbcdn.net/hphotos-frc1/t31/s720x720/902105_4379604381778_1545155531_o.jpg',
    'https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-frc1/t31/s720x720/892034_4379602981743_1263099535_o.jpg',
    'https://scontent-b-pao.xx.fbcdn.net/hphotos-frc1/t31/s720x720/904059_4379602061720_992702927_o.jpg',
    'https://fbcdn-sphotos-a-a.akamaihd.net/hphotos-ak-frc3/t31/s720x720/893773_4379595581558_657176655_o.jpg',
    'https://scontent-b-pao.xx.fbcdn.net/hphotos-prn1/t31/p480x480/778795_3979001446955_704899980_o.jpg',
    'https://scontent-a-pao.xx.fbcdn.net/hphotos-prn1/t31/p180x540/735491_3831245593151_2081951274_o.jpg',
    'https://scontent-b-pao.xx.fbcdn.net/hphotos-prn1/t31/s720x720/56302_3546600837210_1107105520_o.jpg'
  ].shuffle

  def cover_url
    if id.present?
      COVER_URL[id % COVER_URL.length]
    end
  end
end
