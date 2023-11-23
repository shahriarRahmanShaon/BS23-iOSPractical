# BS23-iOSPractical
iOS Practical test application for brain station 23 

## Overview
This iOS app, built using SwiftUI and the Combine framework, showcases a practical implementation of the MVVM architecture. It allows users to view a list of movies fetched from The Movie Database (TMDb) API, focusing initially on Marvel movies.

## Features
- **Default Marvel Movies List**: Automatically displays a list of Marvel movies at launch.
- **Dynamic Movie Search**: Users can search for movies using different queries.
- **SwiftUI Interface**: The app features a SwiftUI-based user interface, ensuring a modern and responsive user experience.
- **Combine for Networking**: Uses the Combine framework for handling asynchronous network requests and data binding.

## Screenshots
![IMG_3631](https://github.com/shahriarRahmanShaon/BS23-iOSPractical/assets/74074750/0364830f-2a1f-454d-81b8-d980027c5c5f)
![IMG_3632](https://github.com/shahriarRahmanShaon/BS23-iOSPractical/assets/74074750/484eed4f-4e9f-4938-8d6a-c6428e9141a1)
![IMG_3633](https://github.com/shahriarRahmanShaon/BS23-iOSPractical/assets/74074750/b8f4c143-100d-4783-a92c-b8689bbf7d74)


## Architecture
- **MVVM**: The app is structured around the Model-View-ViewModel (MVVM) architectural pattern, promoting separation of concerns and improving maintainability.
- **Model**: Represents the data and business logic of the app. It includes structures for movie data and a service for fetching data from the API.
- **View**: SwiftUI views constituting the user interface.
- **ViewModel**: Connects the views with the models, handling presentation logic and state.

## Technologies Used
- **SwiftUI**: For building the user interface in a declarative style.
- **Combine**: For managing asynchronous events and data streams.

## Getting Started
To run this project:
1. Clone the repository.
2. Open the project in Xcode.
3. Run the app in the simulator or on a real device.


