# IOS-101_Capstone-project

# guida locale

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview


### Description

Guida Locale is a travel and exploring app that promotes local activities. Users can learn about hidden gems, local events, and unusual activities in their area. The app also includes a function that connects users with local guides who provide tailored tours and insights into the area's culture and history. Guida Locale aims to provide personalized, local travel experiences to tourists by offering curated guides, recommendations, and real-time updates on events and attractions. It aims to bridge the gap between travelers and local experiences, fostering a sense of exploration and discovery while allowing tourists to immerse themselves in the culture and vibe of their destination.


### App Evaluation

- **Description**: A mobile app that provides personalized, local travel experiences to tourists by offering curated guides, recommendations, and real-time updates on events and attractions.
- **Category**: Travel
- **Mobile**: Utilizes GPS, maps, and real-time updates to provide localized information, making it essential for travelers on the go. Users can interact with the app to discover nearby points of interest and receive personalized recommendations.
- **Story**: Bridges the gap between travelers and local experiences, fostering a sense of exploration and discovery. Allows tourists to immerse themselves in the culture and vibe of a destination, creating memorable experiences.
- **Market**: Appeals to travelers seeking authentic experiences and local insights. Market includes tourists visiting various destinations worldwide, with potential for partnerships with tourism boards and local businesses.
- **Habit**: Tourists would use the app frequently during their travels to explore and navigate new destinations. The app encourages exploration and interaction, making it habit-forming for travelers.
 - **Scope**: V1 focuses on providing basic guide features and recommendations. V2 could introduce personalized itineraries and AR experiences. V3 might incorporate user-generated content and social features for sharing experiences.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* [x] Users can login and sign up into the app 
* [x] Users can navigate form home screen to inbox, trip, Blog, Profile Screens
* [ ] Users can view curated guides for less-known locations.
* [x] Users can edit their Profile
* [ ] Users can access personalized recommendations for nearby points of interest, events, and attractions.
* [x] Users receive real-time updates on events and attractions in their selected destination.
* [x] Users can personally connect with local insiders who offer tailored tours and insights into the area's culture and history.

**Optional Nice-to-have Stories**

* Users can share their travel experiences, recommendations, and tips with the community.
* Users can interact with other users by commenting, liking, and sharing content.


### 2. Screen Archetypes

- [x] Login Screen
* Users can log in to their existing accounts.
- [x] Registration Screen
* Users can create a new account.
- [ ] Home Screen
* Users can search for specific locations, guides, or points of interest using filters.
- [ ] inbox Screen
* User receives suggestion to be as local guide for other people based on user location.
- [x] Guide Screen 
* Users can view  profiles of Guides of interest and connect with local insiders and book tailored tours or experiences.
- [x] Detail Screen
* Users can view detailed information about a specific location, event, or attraction
- [x] Guide Detail Screen 
* Users can view  detailed profile of Guide and their reviews.  
- [x] Profile Screen
* Users can view and edit their general information, guide profile, settings , policy and contact&support.
- [ ] Blog Screen
* Users can view curated guides, personalized recommendations, and real-time updates.
- [ ] Map screen
* Users can view maps to locate local events, local attractions.
- [x] Trip Screen


### 3. Navigation

**Tab Navigation** (Tab to Screen)


* Home
* inbox
* trip
* Blog
* Profile


**Flow Navigation** (Screen to Screen)

- [x] Login Screen
  * => Home
- [x] Registration Screen
  * => Home
- [ ] Home Screen
  * => location/event Screen
  * => Guide Screen
- [ ] location/event Screen
  * => Map screen
- [x] Guide Screen
  * => Guide detail Screen
- [ ] Profile Screen
  * => None
- [x] Trip Screen
  * => None
- [ ] Inbox Screen
  * => None
- [ ] Blog Screen
  * => None


## Wireframes

<img src="Wireframe.jpeg" width="600">

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype


## Sprint Planning and Development

### Main Features

- **Home Screen**: Displaying overview for specific locations, guides, or points of interest using filters.
- **inbox Screen**: Allow users to accept request as Local guide for other users .
- **Guide Screen**: Enable users to view profiles of guides, connect with local insiders, and book tailored tours or experiences.
- **Profile Screen**: Allow users to view and edit their profile, settings, and policy.
- **Map Screen**: Enable users to view maps to locate local events and attractions.
- **Local Data Persistence**

### Breakdown into Sprints

- **Sprint 1**: Set up project structure and tab controller setup and login and registration screen
- **Sprint 2**: Build the Guide Screen and Profile Screen.
- **Sprint 3**: Design and implement the Home Screen and Explore Screen.
- **Sprint 4**: Implement the Map Screen and finalize features.

### Weekly Goals

- Sprint 1 Goal: Complete project setup and Tab Controller Setup .
- Sprint 2 Goal: Develop functionalities for viewing guide profiles and editing user profiles.
- Sprint 3 Goal: Design and implement UI components for the Home Screen and Explore Screen.
- Sprint 4 Goal: Integrate map functionality and finalize user interface and features.

### Weekly Submissions

- Sprint 1 : Worked on login and signup screen  and implemented user authentication using firebase and connected screens using segue and tab controller for home screen

- challenges Faced:
* Implementing firebase project for User Authentication
* Using Segue to control the flow between screens
<div>
    <a href="https://www.loom.com/share/fbacfa3087eb41b988c4abe29eb3f5db">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/fbacfa3087eb41b988c4abe29eb3f5db-with-play.gif">
    </a>
  </div>

- Sprint 2 : Worked on Profile Screen and guide screen and connected app to a Firebase realtime-database

- challenges Faced:
* Implementing firebase database for storing Signup Data
* Displaying TableView for profile using xib file
  
<div>
    <a href="https://www.loom.com/share/fbacfa3087eb41b988c4abe29eb3f5db">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/fbacfa3087eb41b988c4abe29eb3f5db-with-play.gif">
    </a>
  </div>

-Sprint 3 :Worked on trip screen to add trips for users who want to book local guide

- challenges Faced:
* Implementing view controller with a functionality of adding cells and delete similar to To-do-Task list
* Tried to fetch Events using API , but need to work more on parsing the information(future work)
  
<div>
    <a href="https://www.loom.com/share/7a151412559b454da776b14c84fa8d87">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/7a151412559b454da776b14c84fa8d87-with-play.gif">
    </a>
  </div>
  
## Schema 

The schema for your app could include the following tables:

- **Users**: Stores information about each user, such as their username, password, profile picture, and saved locations.
- **Guides**: Stores information about each guide, such as their name, location, quote, and profile picture URL.
- **Locations**: Stores information about each location, such as its name, description, and associated guides.

### Models

Here are the models based on the schema:

- **User**
    - username: String
    - password: String
    - profilePicture: UIImage
    - savedLocations: [Location]

- **Guide**
    - name: String
    - location: String
    - quote: String
    - profilePictureURL: String

- **Location**
    - name: String
    - description: String
    - associatedGuides: [Guide]

### Networking

Here are the network requests by screen:

- **Login Screen**
    - (Read/GET) Query logged in user object

- **Registration Screen**
    - (Create/POST) Create a new user object

- **Profile Screen**
    - (Read/GET) Query logged in user object
    - (Update/PUT) Update user profile image

- **Home Screen**
    - (Read/GET) Query all guides where user is author

- **Guide Detail Screen**
    - (Read/GET) Query the guide object

Please note that these are just suggestions and you may need to modify them based on the actual requirements of your app and the backend service you are using. If you're using a specific backend like Firebase or Parse, you'll need to adjust the networking section to match the API calls for that service. If you're using an existing API, you'll need to list the endpoints you're using in the networking section. Let me know if you need further assistance! 😊

