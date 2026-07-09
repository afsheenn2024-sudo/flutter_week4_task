# Flutter Week 4 – API Integration and Networking

This Flutter application was developed as part of the **Week 4 Flutter Internship**. The project demonstrates how to fetch data from a REST API, parse JSON responses, and display user information using a clean and responsive Flutter user interface with proper loading and error handling.

---

## Features

- Fetch user data from a REST API using the `http` package
- Parse JSON data into Dart model objects
- Display users in a scrollable `ListView`
- View detailed user profiles
- Display user name, email, and profile picture
- Loading indicator while fetching data
- Error handling with retry functionality
- Pull-to-refresh to reload user data
- Clean and responsive Material Design UI

---

## Technologies Used

- Flutter
- Dart
- HTTP Package
- JSONPlaceholder REST API

---

## API Used

This project uses the public **JSONPlaceholder** REST API to fetch user data:

```text
https://jsonplaceholder.typicode.com/users
```

Profile images are displayed using:

```text
https://i.pravatar.cc/
```

---

## Project Structure

```text
lib/
├── models/
│   └── user.dart
├── screens/
│   ├── splash_screen.dart
│   ├── home_screen.dart
│   └── profile_screen.dart
├── services/
│   └── api_service.dart
├── widgets/
│   └── user_card.dart
└── main.dart
```

---

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

---

## App Workflow

1. Launch the application.
2. Splash screen is displayed.
3. User data is fetched from the JSONPlaceholder API.
4. A loading spinner appears while data is being fetched.
5. Users are displayed in a scrollable list.
6. Tap any user to view their profile.
7. Pull down to refresh the user list.
8. If the API request fails, an error message with a **Retry** button is displayed.

