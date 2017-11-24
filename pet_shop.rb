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
