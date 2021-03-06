# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----

zombie_apocalypse_supplies.each do |item|
	print item + "*"
end

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----

def alpha(arr)
swapped = true
  while swapped == true
    swapped = false
    n = arr.length - 1
    n.times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break if not swapped
  end
  puts arr
end

alpha(zombie_apocalypse_supplies)

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

def inventory(arr, str)
  if arr.include? str
    puts "Yes, #{str} is packed"
  else
    puts "No, you don't have #{str}"
  end
end

inventory(zombie_apocalypse_supplies, "boots")
inventory(zombie_apocalypse_supplies, "shotgun")

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

while zombie_apocalypse_supplies.length > 5
 zombie_apocalypse_supplies.pop
end

puts zombie_apocalypse_supplies

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----

total_supplies = zombie_apocalypse_supplies | other_survivor_supplies
puts total_supplies

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

extinct_animals.each do |key, value|
  print key + "-" + value.to_s + "*"
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

extinct_animals.each do |key, value|
  if value < 2000
    puts key + value.to_s
  end
end

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

extinct_animals['Tasmanian Tiger'] = 1933
extinct_animals['Eastern Hare Wallaby'] = 1887
extinct_animals['Dodo'] = 1659
extinct_animals['Pyrenean Ibex'] = 1997
extinct_animals['Passenger Pigeon'] = 1911
extinct_animals['West African Black Rhinoceros'] = 2008
extinct_animals['Laysan Crake'] = 1920

p extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

p extinct_animals['Andean Cat'] #returns as nil
p extinct_animals['Dodo']
p extinct_animals['Saiga Antelope'] #returns as nil

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----

extinct_animals['Passenger Pigeon'].shift
p extinct_animals