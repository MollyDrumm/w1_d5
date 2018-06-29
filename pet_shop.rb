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

def pets_by_breed(petshop, breed_of_pet)
  petshop_pets = petshop[:pets][:breed]

  return 
end
