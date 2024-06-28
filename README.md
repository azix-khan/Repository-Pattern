# repository_provider

This project demonstrates how to fetch user data from an API using Repository Provider and Bloc, and display it in the UI.

## Features

- Fetch user data from an API
- State management with Bloc
- Repository pattern implementation
- Clean and maintainable code structure

## Getting Started
<img width="959" alt="image" src="https://github.com/azix-khan/Repository-Pattern/assets/138978130/e58059fc-2f1d-470f-b883-454328e8e397">

### Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/azix-khan/Repository-Pattern.git
   ```
2. Navigate to the project directory:
   ```sh
   cd Repository-Pattern
   ```
3. Install dependencies:
   ```sh
   flutter pub get
   ```

## Usage

1. Run the app:
   ```sh
   flutter run
   ```

2. The app will fetch and display user data from the API.

## Project Structure

```
lib/
├── bloc/
│   ├── user_bloc.dart
│   ├── user_event.dart
│   └── user_state.dart
├── data/
│   ├── model/
│   │   └── user_model.dart
│   ├── provider/
│   │   └── user_provider.dart
│   └── repository/
│       └── user_repository.dart
├── ui/
│   └── home.dart
└── main.dart

```

- **blocs/**: Contains Bloc, Event, and State classes for managing user data.
- **data/model/**: Contains the User model class.
- **data/provider/**: Contains the provider for fetching data.
- **data/repository/**: Contains the repository for managing data operations.
- **ui/**: Contains the UI code.
- **main.dart**: The entry point of the app.

## Contributing

Contributions are welcome! Please fork the repository and create a pull request.

