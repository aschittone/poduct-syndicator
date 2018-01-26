class Syndication

# calls to additional APIS can be made below, to syndicate to additional sites:
	# -meetup api
	# -eventful api
	# -ticketmaster api
	# 

  def perform
		# call to eventbrite API to create new event
		products = Product.where(updated_at: (Time.now - 1.hour)..Time.now)
		products.each do |product|
		# additional info can be included to create event
			Excon.post(`https://www.eventbriteapi.com/v3/events?event.name.html=#{product.name}&event.start.timezone=EST&event.start.utc=#{product.start_time}&event.end.utc=#{product.end_time}&event.end.timezone=EST&event.currency=USD&event.online_event=true`,
				:headers => { 
					"Authorization" => "Bearer KTRI7UC3GM6FH6I5CR2D",
					"Content-Type" => "application/x-www-form-urlencoded"
				}
			)
		end
  end
end