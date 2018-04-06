require_relative "listing.rb"
# 11. Build out the Host class in a file named host.rb file. Make sure to include a create_listing method, which creates a new instance of the Listing class.


# 12. Add any additional methods or attributes you can think of (or modify the ones we have already written) to make this listing as realistic as possible. How could you write a Guest class to interact with the Listing class?

class Host
  attr_accessor :location, :availability, :rules, :host, :beds, :dates_available
  def initialize(host, beds, dates_available, price)
    @host = "Alfonso"
    @beds = beds
    @location = "San Diego"
    @dates_available = dates_available
    @price = price
    @rules = ["No pets", "No guests", "No vaping", "No funny business", "No using the couch", "No cooking"]
  end
  def create_listing
    rental = Listing.new(@host, @beds, @dates_available, @price)
    rental
  end
end

class Guest
  attr_accessor :name, :num_nights, :num_guests, :pets
  def initialize(name, num_nights, num_guests, pets)
    @name = name
    @num_nights = num_nights
    @num_guests = num_guests
    @pets = pets
  end
  def rent(listing)
    listing.reserve_and_pay(@name, @num_nights)
    p listing
  end
end

alfonso = Host.new('Alfie', 4, [1,2,3,4,5,6,7,8,9], 250)
puts alfonso
alfonso.create_listing

michael = Guest.new('Michael', [2,3], 2, false)
puts michael
michael.rent(alfonso.create_listing)
