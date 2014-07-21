ticket = Object.new

def ticket.available?
  false
end

def ticket.price
  117.20
end

def ticket.venue
  "Shark Stadium"
end

def ticket.name
  "Origin visits!"
end

methods = [ "available?", "price", "unknown", "venue", "name" ]

methods.each do |name|
  if ticket.respond_to?(name)
    puts ticket.__send__(name)
  else
    puts "This method (#{name}) is not available."
  end
end