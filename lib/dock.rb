class Dock
  attr_reader :name, :max_rental_time, :rental_log, :revenue

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rental_log = {}
    @revenue = 0
  end

  def rent(boat, renter)
    @renter = renter
    @rental_log[boat] = renter
  end

  def rental_amount(boat)
    @boat = boat
    if boat.hours_rented < @max_rental_time
      amount = boat.price_per_hour * boat.hours_rented
     else
      amount = boat.price_per_hour * @max_rental_time
    end

  end

  def charge(boat)

  @boat = boat

  hash = {
    :card_number => @rental_log[boat].credit_card_number,
    :amount => rental_amount(boat)
          }

  end

  def log_hour
    @rental_log.each_key do |boat|
      boat.add_hour
    end
  end

  def return(boat)
    @boat = boat
    @revenue += rental_amount(boat)
    @rental_log.delete(boat)

  end


end
