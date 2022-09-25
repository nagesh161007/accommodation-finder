# Accommodation Finder

## Project description 

The goal of this project is to build a database that will aid students looking for both temporary and permanent accommodation. Users/Students (hosts) can publish their apartments with the dates it will be available, and students can search for rooms based on their preferences make reservations for temporary accommodation, and contact with the host for permanent accommodation.


### Brief Overview

Hosts will be able to offer their currently rented apartments for permanent housing and short-term housing with their preferences for housemates, apartment images, a video tour, move-in dates, house rules, nearby utilities stores, and method of commuting to school. By using filters based on preferences for room type, hall place, members of the house with matching courses, and university, users will be able to locate permanent or temporary accommodation. Users will be able to view information on members, such as the courses they are enrolled in, their states, their languages, and their contact information, subject to host approval. Users looking for lodging are divided into free and premium subscription plans, which only allow them to access the contact details of the property's host.

### DB Functionalities 

1.Host will be able to host their accommodations with move-in dates, rent for the person, number of open spots, photos, an apartment video tour, address, room spot type, apartment info (bed and bath information), laundry access, and preferences for house members (state, food, language, course, university, and no smoking/alcohol).
2. Users can focus their search for rooms based on attributes including location, dates of stay, and preferences for both temporary and permanent postings.
3. Based on the user's recorded choices and available dates, accommodations will be displayed.
4. Users will be able to book and cancel temporary accommodation as well as pay for their stay.
5. For permanent accommodation, users will have access to the host's contact information, but there will be time and property contact limit restrictions depending on the user subscription plan.
6. Users can bookmark accommodation listings to view at a later time.
7. Users will be notified of new listings if the property matches their criteria.
8. Reviews of temporary accommodations can include ratings and remarks
9. Rent will be categorized based on the spot type, sharing, private rooms with brokerage, deposit if applicable
10. Members of the house can be either user or if signup as user which will be matched based on email and contact information
11. Students looking for temporary and permanent can also post their requests 

### Entities Overview

1. Each listing will have information related to accommodation type, rent, room type(bed room, shared, private or hall spot), number of guests it can accommodate, vacancies, price, address, photos, amenities and rating and reviews (optional), cancellation policy (temporary accommodation), gender preference, contact information, listing type, house rules
2. Users can be of two types either - host who will post accommodations and user who can view and book accommodations
3. Users will have first name, last name, email id, mobile number, University, course ,valid proof (admit letter, i20), profile picture (optional).
4. Temporary accommodation bookings will have booking_id, checkin and checkout dates, amount paid, cancelable, address and contact information
5. Wishlist to bookmark listings with listing id
6. User preference with pincode, radius, university, course, room type, rent range and other amenities
7. Notifications with accommodation listing info when new accommodations which are matching user preference - notification id, read.
8. Payment table which contains amount payment type, amount paid, transaction time.
9. subscription model - plan type, expiry date, subscription amount
10. Number of properties contacted for permanent accommodation by user
11. room members (non user) which will be added by accommodation host - university, course, state, language.
12. Accommodation request post - userid, postingid, contact, preferences



#### sample tables

https://lucid.app/lucidchart/4e48e608-4331-4bf8-9a1b-17dc185a4e8a/edit?invitationId=inv_3812ce17-7ced-4a98-bd41-0c0def70bd49#


### Project Members

Akshitha Kamshetty
Nageshwara sairam

Github repository link - https://github.com/nagesh161007/accommodation-finder
