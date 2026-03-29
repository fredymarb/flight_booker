# README

# Flight Booker

A flight booking application built with Ruby on Rails as part of The Odin Project curriculum.

This project focuses on building a multi-step booking flow, working with complex associations, nested forms, handling user input across multiple models and sending email confirmations.

## Overview

Flight Booker simulates a simplified airline booking system where users can:

- Search for available flights
- Select number of passengers
- Enter passenger information
- Create a booking confirmation
- Get a confirmation email

The main goal of the project is backend logic and Rails architecture, not advanced UI styling.

The project reinforces important Rails concepts such as:

- Active Record associations
- Nested forms
- RESTful routing
- Controller flow between pages
- Data modeling for real-world applications
- Working with Mailers

## Features

### Search flights by:

- Departure airport
- Arrival airport
- Flight date

### Booking system

- Select passenger count
- Dynamic passenger forms
- Store passenger information per booking

### Database relationships

- Flights
- Airports
- Bookings
- Passengers

## ⚙️ Setup Instructions

1. Clone the repository

   ```
       git clone https://github.com/YOUR_USERNAME/flight-booker.git
       cd flight-booker
   ```

2. Install dependencies

   ```
       bundle install
   ```

3. Setup database

   ```
       rails db:create
       rails db:migrate
       rails db:seed
   ```

4. Start the server

   ```
       rails server
   ```

   Visit:

   ```
       http://localhost:3000
   ```

5. To view confirmation emails
   ```
       Visit "http://localhost:3000/letter_opener
   ```

## 🎯 Learning Goals

This project was completed to:

- Understand real-world relational database modeling
- Practice complex form handling in Rails
- Build a multi-step user workflow
- Strengthen understanding of Rails conventions
- Practice sending emails with ActionMailer
