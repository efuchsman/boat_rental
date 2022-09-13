class Dock
  attr_reader :name, :max_rental_time, :rental_log

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rental_log = {}
  end

  def rent(boat, renter)
    @renter = renter
    @rental_log[boat] = renter
  end

  def rental_amount(boat)
    @boat = boat
    if boat.hours_rented < @max_rental_time
    boat.price_per_hour * boat.hours_rented
    else
      boat.price_per_hour * @max_rental_time
    end
  end

  def card_number(boat)
    @rental_log[boat].credit_card_number
  end


  def charge(boat)

  @boat = boat
  hash = {
    :card_number => card_number(boat),
    :amount => rental_amount(boat)

  }

  end
  hash
end
