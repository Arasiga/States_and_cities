@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan',
  CO: 'Colorado',
  TX: 'Texas'
}

@cities = {
  OR: ['Portland', 'Salem', 'Oregon City'],
  CA: ['Los Angeles', 'San Diego', 'San Francisco'],
  FL: ['Miami', 'Orlando', 'Key West'],
  NY: ['New York City', 'Manhattan', 'Buffalo'],
  MI: ['Grand Rapids', 'Ann Arbor', 'Detroit'],
  CO: ['Denver', 'Colorado Springs', 'Aspen'],
  TX: ['Houston', 'Dallas', 'Frisco']
}



def describe_state(state_code)

  statesHash = @states
  citiesHash = @cities

  cities = citiesHash[state_code].join(', ')

  if statesHash.has_key?(state_code)
    return "#{state_code} is for #{statesHash[state_code]}, it has 3 major cities: #{cities}" 
  else
    return "Sorry we do not know that state!"
  end
end

@taxes = {
  OR: 2.5,
  FL: 10,
  CA: 7.8,
  NY: 5.6,
  MI: 6,
  CO: 13,
  TX: 5
}

def calculate_tax(state_code, dollar_amount)

  if @taxes.has_key?(state_code)

    tax = @taxes[state_code]/100
    tax_pay = tax*dollar_amount

    return "The tax rate in #{state_code} is #{tax}%. Therefore, for #{dollar_amount}$, you will be paying #{tax_pay.round(2)}"

  else
    return "Sorry we do not know that state!"
  end


end

def find_state_for_city(name_of_city)
  @cities.each do |key, value|
    value.each do |element|
      if name_of_city == element.to_sym
        return key
      end
    end
  end
    return "Not found"

end    

state = gets.chomp.to_sym
#dollarAmount = gets.chomp.to_i

puts find_state_for_city(state)


