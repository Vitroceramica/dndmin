/*
    This does not compile, this file is only to keep track of what every file
    does organized in a folder tree for better readablity & reusability.

    - /lib:
      - /backend:                               // This folder contains the backend getters
        - character.dart                        //  - Getter for all the characters of the player
        - dice.dart                             //  - Getter for the dice last state data
        - login.dart                            //  - Token Getter and login hadler
        - notifications.dart                    //  - Getter for all the notifications shown in MainMenu
        - userData.dart                         //  - This is an object to keep track of the user data in a single variable, this does NOT save user paswords, user passwords are only used once through out the whole project
      - /config                                 // This folder holds misc. config data for easy reference
        - palette.dart                          //  - Palette object holds the colors of the whole project
      -/extensions                              // This folder holds extensions to flutter default Framework
        - capitalise.dart                       //  - String extension for word capitalization (Used on TopBar for username)
      -/screens                                 // This folder contains all the individual pages of the app
        - charSelector.dart                     //  - Contains the character selection view. Can go to MainMenu or to LoginScreen
        - loginScreen.dart                      //  - Does login logistics and handles the results, if the pwd & username is correct it redirects you to the character selection
        - mainMenu.dart                         //  - This is the main menu of the app, shows last events and is the base on the app tree
        - personajeMenu.dart                    //  - Contains and lets you edit (Not implemented yet) all the character information: Stats, Life info & Hability Stats
        - swipeUpMenu.dart                      //  - This menu is shown when you swipe up in the Bottom Bar of the app. Contains more in depth character edits & let's you throw dices from anywhere in the app.
      -/ui                                      // This folder contains individual folders with individual UI elements of the screens by the same name
        -/animatedWidgets                       //  - This folder contains widgets in other folders inside /ui but animated
          - animatedBottomBar.dart              //    - Animates the Bottom Bar to do a cool swipe up and show SwipeUpMenu().dart
        -/charSelector                          //  - This folder contains the individual widget of CharSelector()
          - charFutureBuilder.dart              //    - This populates the list that show all the characters of the player
          - charListCard.dart                   //    - This is the model for the each list item
        -/login                                 //  - This folder contains all the items in the login screen
          - all.dart                            //    - Simple way to import all the items at once while not bloating the top of the file
          - loginForm.dart                      //    - This contains the user input and validation, It also asks the Login() class for the validation and status
          - lostPassword.dart                   //    - (Not Implemented Yet) Sends you a recovery email
          - registerButton.dart                 //    - (Not Implemented Yet) Shows the Registration form
        -/mainMenu                              //  - Contains all the MainMenu() items
          - all.dart                            //    - Same as other all.dart
          - bottomBar.dart                      //    - Bottom Bar shown through out the app
          - characterIndicator.dart             //    - Top character display. Able to redirect you to a character change
          - eventList.dart                      //    - Event list populator an item display. Asks Notifications() for data
          - topBar.dart                         //    - Username display and sesion ender button
        -/personajeMenu                         //  - Contains all the PersonajeMenu widgets
          - all.dart                            //    - Same as previous all.dart
          - swipableCard.dart                   //    - Responsive, swipeable & animated container. This is more like a custom TabBar and TabViews
          - swipableCardSelector.dart           //    - TopBar of the container, similar to TabBar
      - info.dart                               // This file
      - main.dart                               // App Entry Point    


*/