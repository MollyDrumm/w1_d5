def pet_shop_name(petshop)
   name = petshop[:name]
   return name
end

def total_cash(petshop)
  sum = petshop[:admin][:total_cash]
  return sum
end

def add_or_remove_cash(petshop, money_to_add_or_remove)
  #get current money from till
  current_money = petshop[:admin][:total_cash]
  # increase that money
  new_money = current_money + money_to_add_or_remove
  # put the new amount back in the till
  petshop[:admin][:total_cash] = new_money
end

def pets_sold(petshop)
  # get current number of sold pet_shop
  current_pets_sold = petshop[:admin][:pets_sold]
  # return it
  return current_pets_sold
end

def increase_pets_sold(petshop, pets_sold)
  current_pets = petshop[:admin][:pets_sold]
  new_number_of_pets = current_pets + pets_sold
  petshop[:admin][:pets_sold] = new_number_of_pets
end

def stock_count(petshop)
  counted_stock = petshop[:pets].length
  return counted_stock
end

def pets_by_breed(petshop, breed)
  breed_of_pet = []
  for pet in petshop[:pets]
    if pet[:breed] == breed
      breed_of_pet << pet
    end
  end
  return breed_of_pet
end

def find_pet_by_name(petshop, name)
  for pet in petshop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(petshop, name)
  name_of_pet = find_pet_by_name(petshop, name)
  petshop[:pets].delete(name_of_pet)
end

def add_pet_to_stock(petshop, new_pet)
  pets_in_petshop = petshop[:pets]
  new_pets = new_pet
  total_pets = pets_in_petshop << new_pets
  return total_pets
end

def customer_cash(customers)
  total_cash = customers[:cash]
  return total_cash
end

def remove_customer_cash(customer, money)
  customer_cash = customer[:cash]
  remove_customer_cash = customer_cash - money
  customer[:cash] = remove_customer_cash
end

def customer_pet_count(customers)
  pet_count = customers[:pets]
  return pet_count.length
end

def add_pet_to_customer(customer, new_pets)
  
end
