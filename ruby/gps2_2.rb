# Method to create a list - create_list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Split the string into an array with each element being a seperate item
  # for each item in the split array 
  #   create that hash key entry
  #   set default quantity to 1
  # print the list to the console using print_list
# output: hash

# Method to add an item to a list - add_to_list
# input: hash, item name, and optional quantity
# steps:
  # Add [item name => quantity] to the passed in hash
# output: updated hash

# Method to remove an item from the list - remove_from_list
# input: hash, item name
# steps:
  # Remove key-pair with key = item name from hash
# output: updated hash

# Method to update the quantity of an item - update_list
# input: hash, item name, required quantity
# steps:
  # Find item name in hash
  # set value of that key to the passed in quantity
# output: updated hash

# Method to print a list and make it look pretty print_list
# input: hash
# steps:
  # For EACH key-value pair
  #   print the key, a '-', then the value
# output: nil

def create_list(items)
  list = Hash.new(0)
  itm_arr = items.split(' ')
  itm_arr.each do |item|
    list[item] += 1
  end
  print_list(list)
  list
end

def add_to_list(list, item, quantity = 1)
  list[item] += quantity
end

def remove_from_list(list, item)
  list.delete(item)
end

def update_list(list, item, quantity)
  list[item] = quantity
end

def print_list(list)
  list.each do |item, quantity|
    puts "#{item}".ljust(15, ' ') + "x#{quantity}".rjust(5, ' ')
  end
end

list = create_list("")
add_to_list(list, "Lemonade", 2)
add_to_list(list, "Tomatoes", 3)
add_to_list(list, "Onions")
add_to_list(list, "Ice Cream", 4)
remove_from_list(list, "Lemonade")
update_list(list, "Ice Cream", 1)
print_list(list)