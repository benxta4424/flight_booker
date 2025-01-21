This project aims to do the following:
-find a project from a database based on: the departure airport (name), the arrival airport(name) (also added a passager number option but we dont use it in this project. i will redo the project in the near future but in a more optimised fashion)
-select a flight from the ones that were found (multiple radio buttons that have as a hidden value the chosen flights's id)
-upon selecting the 'Search Flight' button a form is generated
-the generated form is for the creation of the passager
-after creating the passager,a new booking is created with the passager id and the chosen flights's id

How i created the project:
-creating the models and their associations in order for the models to communicate between them (has_many through relationship with the Bookings model)
-creating the logic behind the flight controller: The only thing that the flight controller does is that it renders a flight based on the given inputs
-generating the Bookings controller: this one was a bit tough because i had to entangle the Passager controller inside the Create method of the Bookings (im not sure how good this is yet,i will do further testing)
-adding stylesheets for a better UI

Main issues i encountered:
-the date format for the searched flight was not correct and i was rendered a nil flight (i spent a bit of time on this)
-i did a mistake: i sent the flights to the bookings index instead of the Create route of the Bookings and not the New route (i also used the wrong method :get instead of :post)
-another form mistake:used :post method instead of :get for the passager rendering


