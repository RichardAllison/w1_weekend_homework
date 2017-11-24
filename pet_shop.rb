def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, number)
  pet_shop[:admin][:total_cash] += number
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number)
  pet_shop[:admin][:pets_sold] += number
end

def stock_count(pet_shop)
  stock = 0
  for pets in pet_shop[:pets]
    stock += 1
  end
  return stock
end

def pets_by_breed(pet_shop, breed)
    pets_by_breed_array = []
    for pet in pet_shop[:pets]
      if pet[:breed] == breed
        pets_by_breed_array.push(pet)
      end
    end
    return pets_by_breed_array
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if name == pet[:name]
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  pet = find_pet_by_name(pet_shop, name)
  pet_shop[:pets].delete(pet)
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_pet_count(customers)
  return customers[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

# optional excercises
def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  end
  return false
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet != nil && customer[:cash] >= pet[:price]
    customer[:pets].push(pet)
    pet_shop[:pets].delete(pet)
    pet_shop[:admin][:pets_sold] += 1
    pet_shop[:admin][:total_cash] += pet[:price]
    customer[:cash] -= pet[:price]
  end
end
