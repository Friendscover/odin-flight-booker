# odin-flight-booker

This is one of [TheOdinProjects](https://www.theodinproject.com/courses/ruby-on-rails/lessons/building-advanced-forms) project about advanced forms. This project should make me familiar with advanced forms e.g. nested_forms and the select_tag/options_for_select helper methods. 

After finishing this exercise you should be able to book flights, enter payment information and add new passengers to the available flights.

Before starting the Flight booker, you may wanna seed the database. The seed command will create some random flight for you. Just run
```
rails db:seed
```

and start the server as usual with

```
rails s
```

# final thoughts

Okay this was a more difficult than i first imagined. Setting up the relations was working fine until i had some problems with the Date-Selection. First i had a different implementation of the Date Selection Forms which just generated a Date to compare it with the existing flights. Since I did not get it working properly, i reread the exercise on TOP and changed the date selection queue to only include existing departure times. 

Implementing the ```acceptes_nested_attributes``` relation made me change the DB table on ```passengers``` and ```bookings``` to make it work. After that everything else was working fine.

I may come back to add some styling and refactor some views into forms but I am happy with the current status of the project even though it may look bad. 