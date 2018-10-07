def pet_shop_name(name)
  return name[:name]
end


def total_cash(cash)
  return cash[:admin][:total_cash]
end

def add_or_remove_cash(cash, purchase)
  return cash[:admin][:total_cash] += (purchase)
end


def pets_sold(sales)
  return sales[:admin][:pets_sold].to_i
end

def increase_pets_sold(sales, new_sales)
  return sales[:admin][:pets_sold] += (new_sales)
end

def stock_count(animals)
  return animals[:pets].count
end

def pets_by_breed(shop, breed)
  result = []
  for pet in shop[:pets]
    if pet[:breed] == breed
      result << pet
    end
  end
  return result
end

def find_pet_by_name(shop, name)
for pet in shop[:pets]
  if pet[:name] == name
    return pet
  end
end
return nil
end


def remove_pet_by_name(shop, pet)
  sold_pet = find_pet_by_name(shop, pet)
  shop[:pets].delete(sold_pet)
end

def add_pet_to_stock(stock, new_pet)
  stock[:pets].push(new_pet)
end

def customer_cash(cash)
  return cash[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
customer[:pets].count
end

def add_pet_to_customer(customer, pet)
customer[:pets].push(pet)
end


def customer_can_afford_pet(customer, pet)
 if customer[:cash] > pet[:price]
    true
 else
    false
 end
end



def sell_pet_to_customer(shop, pet, customer)
  customer_pet_count[:pets].push(pet)
  pets_sold[:pets_sold].push(pet)
  customer_cash[:cash] -= price
  total_cash[:admin][:total_cash] += price
end
