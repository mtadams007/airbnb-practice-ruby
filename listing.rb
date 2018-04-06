# require_relative "host.rb"
# The Steps
# 1. Start by defining the Listing class in a file named listing.rb.
# 2. The class should have attributes of host, beds, dates_available, cancellation, guest, reviews, and price. Give each attribute a reader and a writer.


# 3. A listing should initialize with a cancellation of “strict”. Write an initalize method that does this.


# 4. A listing should initialize with with an empty array for the guests attribute. Modify your initialize method to do this.


# 5. A listing should initialize with an empty hash for the reviews attribute. Modify your initialize method to do this.


# 6. host, beds, dates_available, and price will need to be passed in when the listing is created. Modify your initialize method to do this.


# 7. Write a class method called reserve_and_pay. reserve_and_pay should take two parameters: the name of the guest making the reservation, and the number of nights they will be staying for. It should add the guest to the guests array and return the total cost of the stay.


# 8. Write a class method called leave_review, which takes in two arguments: the guest leaving the review, and the text of the review. The method should add a key-value pair to the reviews hash, with the guest as the key, and the text of the review as the value.


# 9. Make your reserve_and_pay method take in an array of the dates the guest will be staying. Use that list to update the dates_available array so that the reserved dates are no longer available.


# 10. Now change your guests attribute to initialize to an empty hash instead of an empty array. Instead of simply adding the name of the guest to an array, your reserve_and_pay method should add the guest to the hash as a key, and the array of dates as the associated value.


# 11. Build out the Host class in a file named host.rb file. Make sure to include a create_listing method, which creates a new instance of the Listing class.


# 12. Add any additional methods or attributes you can think of (or modify the ones we have already written) to make this listing as realistic as possible. How could you write a Guest class to interact with the Listing class?


class Listing
  attr_accessor :host, :beds, :dates_available, :cancellation, :guest, :reviews, :price
  def initialize(host, beds, dates_available, price)
    @host = host
    @beds = beds
    @dates_available = dates_available
    @cancellation = "strict"
    @guest = {}
    @reviews = {}
    @price = price
  end
  def reserve_and_pay(guest_name, num_nights)
    @guest[:"#{guest_name}"] = num_nights
    num_nights.each do |dates|
    @dates_available.delete(dates)
  end
    @price
  end
  def leave_review(guest_name,guest_review)
    @reviews[:"#{guest_name}"] = guest_review
  end
end

bob = Listing.new('rob',3,[1,2,3,4,5],200)
bob.reserve_and_pay('ian', [3,4])
# puts bob.dates_available
# bob.leave_review("ian", "Overrated.")
puts bob.guest
