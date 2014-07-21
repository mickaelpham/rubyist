class Ticket

  def initialize(venue, event)
    @venue = venue
    @event = event
  end

  def price=(amount)
    @price = amount
  end

  def price
    @price
  end

end

t = Ticket.new("Town Hall", "Cascada LIVE!")

t.price=(63.00)
puts "The price for the ticket is #{"$%.2f" % t.price}"

t.price = 72.00 # Syntactic sugar for assignment
puts "--- Woops, it's now #{"$%.2f" % t.price}"
