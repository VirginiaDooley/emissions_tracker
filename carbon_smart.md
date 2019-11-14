The situation

Carbon Smart, a leading sustainability consultancy, has developed a sustainability platform for its
clients. Several fashion clients are looking to capture the environmental impact of their couriers and
their associated journeys. It may take several journeys (legs) to get an order from the client’s
warehouse, to distribution centres and then finally to their customers home (the last mile). This
journey may differ for standard vs next day delivery and each courier and journey may use a
different type of vehicle.

Task 1: Create a database schema

The platform requires a database schema created to capture information the journeys being
undertaken by different couriers and a way to link multiple journeys to get a parcel from A to B.
Create a database schema to capture:
• Information about the client
• Information about their couriers
• Information about the journeys undertaken

<!-- Establish relationships between objects -->

class Client 
    has_many :customers
    has_many  :couriers
end 

class Customer 
    has_many :orders
end 

class Order
    belongs_to :customer
    has_many :parcels
end 

class Courier
    belongs_to :client
    has_many :parcels through :order
    has_many :vehicles
    has_many :shipping_services
end 

class Parcel
    belongs_to :journey
    belongs_to :order
end 

class Journey
    has_many :parcels
end 

<!-- Schema -->
create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "company"
    t.string "email"
    t.string "phone"
    t.string "city"
    t.string "post_code"
    t.string "address1"
    t.string "address2"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
end

  create_table "couriers", force: :cascade do |t|
    t.integer "client_id"
    t.string "company"
    t.string "email"
    t.string "phone"
    t.string "city"
    t.string "post_code"
    t.string "address1"
    t.string "address2"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
end

create_table "journey", force: :cascade do |t|
    t.integer "courier_id"
    t.string "vehicle_type"
    t.integer "leg_length"
    t.string "shipping_speed"
    t.integer "CO2"
    t.string "status"
    t.string "leg_number"
    t.string "city"
    t.string "post_code"
    t.string "address1"
    t.string "address2"
    t.string "country"
    <!-- tallies the total legs; form would allow for multiple entries/legs -->
    t.integer "km_traveled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
end

Task 2: Querying the data
Carbon Smart’s team of consultants need to compile a report to present back to their client. The
client is requesting more information about the impact of next day deliveries. Write queries to work
out the following:
• Provide an ordered descending list of the couriers, and the count, who deliver the most next
day deliveries

SELECT * FROM Couriers
ORDER BY Company DESC;
SELECT MAX(shipping_speed)
FROM Journey
WHERE shipping_speed = next_day;

• Work out which months are experiencing the most next day deliveries and filter by which
cities they’re being delivered to
<!-- return to with time -->
<!-- sort journies by month -->
<!-- query max shipping speed for next day and sort in ascending order -->
<!-- sort by cities -->

Task 3: Calculating emissions
In a language of your choosing write a function to calculate the total distance of a journey that has
multiple legs and to apply an emissions factor depending on the type of vehicle and the unit used to
measure how far it’s travelled. You can arrive at the total emissions (kgCO2e) by multiplying your
total distance by the emissions factor.
<!-- incomplete; refactor with a while statement -->
function totalEmissions(kmTraveled, shippingSpeed, vehicleType, emissionsFactor){
    <!-- if (vehicle_type === "air" &&  shipping_speed === "next_day") {
        return km_traveled * emissions_factor
        -->
<!-- } else {} -->
}


