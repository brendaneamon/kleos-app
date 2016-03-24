*Kleos* App – Who's Who in Homer's *Iliad*
==========================================

Overview & Purpose of the Application
-------------------------------------
*Instructors (Non-technical) & Developers*

The purpose of this application is to provide secondary- and university-level Classics, mythology, and literature students with a reference that will allow them to keep track of important characters in Homer's *Iliad*. Instructors will add, edit, and delete mythological figures and locations within the application, and students will merely be able to access information through different views.

The current version of the application includes only a single administrative user with access to add, edit, and delete mythological figures and and locations ("homes") from the database. This user will be able to populate additional mythological figures and locations through simple, intuitive forms. The app's navigation includes links to view figures, view locations, and log in.

The homepage for the app displays prominent figures, both human and divine, from Homer's *Iliad*. Upon mouseover, the background of the figure will turn red for mortals and blue for deities. Users can click on the English name of the figure to view a details page including the figure's name (English and ancient Greek), Homeric epithets, description, allegiance (Greeks, Trojans, or neutral), and a featured image. The user will also see the figure's home location on the same page. Likewise, when users view a "home" location ("Cities or Kingdoms"), they will be able to view details for that location, including figures associated with or residing at the location.

Future versions of this application may include enhancements such as these:
* Ability for student users to search available mythological figures and locations
* Ability for students to sort the figures and locations displayed by various criteria
* Multiple levels of permissions, including both "student" and "instructor" roles (expect to achieve this through the CanCanCan gem)
* The ability for students to sort the figures and locations alphabetically or by other criteria
* Links to other pertinent resources, on the web and in hard copy
* Significant improvements to styling, which will ensure a pleasant user experience
* Expansion of the app to include Homer's *Odyssey* and other mythological works


User Stories
------------

User stories for this project are available in the `planning` directory on this repository.


Technologies Used
-----------------

This web application was built using using Ruby on Rails (version 4.2.6), HTML with embedded Ruby, and CSS. The database is PostgreSQL, and the Devise gem is being utilized for authentication.


Installation instructions
-------------------------

Users may access this app at the following URL: [https://kleos-app.herokuapp.com/] (https://kleos-app.herokuapp.com/). This is a fairly straightforward Ruby on Rails web application, and it should be compatible with any modern web browser.


Approach Taken & Challenges Faced
---------------------------------

I began the project by writing out user stories for both students and instructors. I also conceived of an ERD for the database and mocked up four (4) wireframes for the `index` and `show` views for the two planned tables. My initial thought was that I would implement a single table with mythological figures, but consultation with instructors led me to change my approach as follows: the database would include two tables, "figures" and "homes." Each figure would have a single home, and each home location would have one or more figures.

The creation of the Rails application was relatively seamless, as I adhered closely to the approach outlined during classroom instruction. I attempted at one point to implement partially nested routes (on a Git branch), but I abandoned this approach after spending a considerable amount of time trying to troubleshoot an error (I now believe this error was due to a problem with the strong params on the figures controller).

I also made a preliminary attempt to implement users (also on a feature branch), but I decided to postpone user and authentication implementation until after learning about the Devise gem (per instructor advice). This turned out to be the optimal course of action, as Devise rendered the process of user authentication incredibly simple (Users in the *Kleos* App may add, edit, or delete any figure or home, so it was not necessary that I associate figures or homes with particular users).

After user authentication via Devise was in place, I spent most of my time styling the views to conform with my expectations for the user interface. I had some difficulties in deploying to Heroku (viz., I had trouble getting the live version of the app to include the latest version of my CSS file), but I managed to solve this problem after researching a handful potential solutions.


Unsolved Problems
-----------------

The most obvious unsolved problem is more of a "room for improvement" than true difficult: styling. I expect to continue to make incremental improvements to the CSS for the app, and I will also investigate utilizing bootstrap to ensure a seamless experience for users across platforms (especially important given the high rate of mobile device adoption by the target demographic for the app).

I also had some difficulty implementing partially nested routes, but I managed to work around this by forcing the authenticated user to select a pre-existing "home" for any new figures created.

At some point, I would like to expand the app's scope to include multiple works of classical literature; however, such a change might necessitate a significant number of changes (e.g., the allegiance of characters to the Greeks, Achaeans, Danaans, et al. as opposed to Trojans is not so important in other myths). At this point, it would be useful to get some user feedback on features in order to determine what should be included in the next version of the application.
