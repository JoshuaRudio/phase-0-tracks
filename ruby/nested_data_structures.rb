hotel = {
	lobby: {
		location_name: 'Hotel Lobby',
		room_info: {
			total_guest_rooms: 0,
			rooms_available: 0
		},
		room_types: {},
		food_options: ["Starbucks", "McDonalds"]
	},
	first_tower: {
		location_name: "Green Tower",
		room_info: {
			total_guest_rooms: 370,
			rooms_available: 50
		},
		room_types: {
			one_bed: "King",
			two_beds: "Queen",
			big_room: "Executive Suite",
			bigger_room: "Presidential Suite"
		},
		food_options: ["Room Service"]
	},
	second_tower: {
		location_name: 'Blue Tower',
		room_info: {
			total_guest_rooms: 250,
			rooms_available: 10
		},
		room_types: {
			one_bed: "Deluxe King",
			two_beds: "Deluxe Queen",
			big_room: "Executive Suite",
			bigger_room: "Penthouse Suite"
		},
		food_options: ["VIP Lounge", "Pricy's Steak House", "Room Service"]
	},
	garage: {
		location_name: 'Parking Garage',
		room_info: {
			total_guest_rooms: 1,
			rooms_available: 1
		},
		room_types: {
			one_bed: "Janitor's living quarters"
		},
		food_options: []
	}
}

p hotel[:lobby][:food_options]
p hotel[:garage][:room_types]
p hotel[:second_tower][:location_name]
puts "I would like to stay in the " + hotel[:second_tower][:room_types][:bigger_room]
puts "Please don't let me stay in the " + hotel[:garage][:room_types][:one_bed].downcase
