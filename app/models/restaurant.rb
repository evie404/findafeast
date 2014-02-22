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
end
