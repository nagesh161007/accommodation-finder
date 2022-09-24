# Accomodation Finder

## Project description 

The objective of this project is to create a database which helps students looking for temporary and permanent accommodations. Users/Students (hosts) will be able to list their apartments with the availability dates and students can search for rooms based on preferences, make reservations for temporary accommodation and contact the host for permanent accommodations.


### Brief Overview

Hosts will be able to list their already rented apartment for permanent accommodation and temporary accommodation with their preferences for house members, apartment photos, video tour, move-in dates house rules, nearby utilities stores and way of commute to university. Users will be able to find permanent/temporary accommodation by filtering preferences based on room type, hall spot, members of the house with matching courses, university. Users will be able to view details about members what course they are studying, state information, languages, contact information which will be viewed by approval from the host. Users looking for accommodation will be categorized based on a subscription model with free and premium plans which limits them to get contact information of the host of the property

### Features 

1.Host will be able to host their accommodations with move in dates,rent for the person, number of vacancy spots, photos,apartment video tour, address, room spot type, apartment info (bed and bath information),laundry access, preferences for house members (state, food, language, course, university, no smoking/Alcohol) 
2. Users can narrow their search for rooms depending on features like location, and dates of stay, and preference on the listings on both temporary and permanent.
3. Accommodations will be displayed in accordance with user saved preferences and dates of availability.
4. Users will be able to book and cancel temporary accommodations and make payment for their stay.
5. For permanent accommodation users will be able to contact the host with contact information with limits based on time frame on no of properties contacted based on the user subscription plan.
6. Users can save accommodation listings to be viewed later.
7. Notifications for new listing to users if the property matches with the user preferences 
8. Temporary accommodations can be reviewed with ratings and comments


### Entities Overview

1. Each listing will have information related to accommodation type, room type(bed room, shared, private or hall spot), number of guests it can accommodate, vacancies, price, address, photos, amenities and rating and reviews (optional), cancellation policy, gender preference, contact information, listing type
2. Users can be of two types either - host who will post accommodations and user who can view and book accommodations
3.Users will have first name, last name, email id, mobile number, University, course ,valid proof (admit letter, i20), profile picture (optional).
4. Temporary accommodation bookings will have booking_id, checkin and checkout dates, amount paid, cancelable, address and contact information
5. Wishlist to bookmark listings with listing id
6. Notification/ Alerts when new accommodations which are matching user preference
7. Payment table which contains amount payment type, amount paid, transaction time.
8. Members of the house can be either user or if signup as user which will be matched based on email and contact information

### Project Members

Akshitha Kamshetty
Nageshwara sairam

Github repository link - https://github.com/nagesh161007/accomodation-finder
