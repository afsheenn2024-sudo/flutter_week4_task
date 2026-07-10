# Flutter Week 4 – API Integration and Networking

This Flutter application was developed as part of the **Week 4 Flutter Internship**. The project demonstrates how to fetch data from a RESTful API, parse JSON responses, and display user information using a clean and responsive Flutter user interface with proper loading and error handling.

## Features

- Fetch user data from a RESTful API using the `http` package
- Parse JSON data into Dart model objects
- Display users in a scrollable `ListView`
- View user profile details
- Display user name, email, and profile picture
- Display a loading indicator while fetching data
- Handle API errors with a Retry button
- Pull-to-refresh to reload user data
- Clean and responsive Material Design UI

## Technologies Used

- Flutter
- Dart
- http Package

## API Used

This project uses the public **JSONPlaceholder** RESTful API:

```text
https://jsonplaceholder.typicode.com/users
```

Profile images are loaded using:

```text
https://i.pravatar.cc/
```

## Project Structure

```text
lib/
├── models/
│   └── user.dart
├── screens/
│   ├── home_screen.dart
│   ├── profile_screen.dart
│   └── splash_screen.dart
├── services/
│   └── api_service.dart
├── widgets/
│   └── user_card.dart
└── main.dart
```

## Installation & Setup

### Clone the repository

```bash
git clone https://github.com/afsheenn2024-sudo/flutter_week4_task.git
```

### Open the project

```bash
cd flutter_week4_task
```

### Install dependencies

```bash
flutter pub get
```

### Run the application

```bash
flutter run
```

## App Workflow

1. Launch the application.
2. The splash screen is displayed.
3. User data is fetched from the JSONPlaceholder API.
4. A loading indicator is shown while data is being fetched.
5. Users are displayed in a scrollable list.
6. Tap any user to view their profile details.
7. Pull down to refresh the user list.
8. If the API request fails, an error message with a **Retry** button is displayed.
