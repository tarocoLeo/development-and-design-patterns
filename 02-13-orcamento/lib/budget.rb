require_relative 'tax.rb'

class Budget
  def initialize(cart)
    @cart = cart
  end

  def found_service_price(service_id, services_price_list)
    services_price_list in [*, {service_id: ^service_id, **} => service, *]

    service[price]
  end

  def budget(requested_services)
    total = 0

    for service in requested_services do
      total += found_service_price(service_id, services_price_list) * requested_services[quantity]
    end

    total
  end
end

