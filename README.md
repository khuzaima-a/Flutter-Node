# Flutter-Node Project Overview

## Node.js Backend

Developing RESTful APIs with Node.js was familiar territory for me due to my previous experience with Node.js. I successfully created two APIs:

1. **GET /rides:** Fetches all rides from MongoDB and returns them to the client.
2. **GET /rides/rideId:** Returns a specific ride based on the provided ride ID.

Though Docker was initially challenging, I managed to overcome hurdles in implementing Dockerfile and docker-compose.yml. I configured two services:

1. **Backend:** Starts the Node.js server and installs required dependencies.
2. **DB:** Starts the MongoDB instance.

## Flutter Frontend

In the Flutter app, I created two screens:

1. **Rides Screen:** Displays all rides with individual cards. Implemented a search button opening a modal for searching rides based on source and destination cities.
2. **Ride Details Screen:** Shows details of a specific ride. Users navigate to this screen by clicking on a ride card in the Rides Screen.



## Challenges and Solutions

Throughout the project, I faced challenges, particularly in connecting the Flutter app to the RESTful APIs. Issues arose due to the server running on localhost, posing difficulties with the Android Emulator. Consultation of Stack Overflow and Medium articles proved instrumental in identifying and rectifying mistakes.

Coming from a web background, styling in Flutter presented a learning curve. CSS simplicity contrasted with the intricacies of Flutter styling. Despite initial challenges, I gradually mastered Flutter styling techniques. While not completely confident, I acquired valuable skills.

## Project Execution

To run the project:

### Backend
1. Navigate to the 'server' folder, and run the commands
```sh
docker-compose build
```
```sh
docker-compose up
```

### Flutter Frontend
1. Move to the 'client' folder, and run the command
```sh
flutter run
```

#### Thank You

