# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Client.create(business_name: 'GAP');
Courier.create(client_id: 1, courier_name: 'FedEx');
Journey.create([{ courier_id: 1, vehincle_type: "Van (Class I)", 
shipping_speed: "next day", leg: "A", address_1: "30 Lancaster Road", 
address_2: "Flat 4", city: "London", 
post_code: "W11", country: "UK", distance: 100}]);