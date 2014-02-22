module RestaurantsHelper
  def info_span(restaurant)
    "#{restaurant.cuisine} #{restaurant.display_price} #{restaurant.location}"
  end
end
