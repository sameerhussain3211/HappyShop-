# eCommerce App

Welcome to the eCommerce App! This project is built using Flutter for the frontend, Firebase for backend services, and Bloc for state management. The app allows users to sign in, sign up, view a list of products, see product details, buy products, view their profile, add items to their cart, and more.

## Features

- **User Authentication**: Sign in and sign up functionalities.
- **Product Listing**: Browse through a list of products.
- **Product Details**: View detailed information about a product.
- **Purchase Products**: Buy products and proceed to checkout.
- **User Profile**: View and update user profile information.
- **Shopping Cart**: Add products to the cart and manage cart items.

## Screenshots

![Home Screen](/home.png)
![Product Details](assects/images/pic.jpeg)
![Cart](screenshots/cart.png)

## Technologies Used

- **Flutter**: For building the mobile application.
- **Firebase**: For authentication, database, and storage.
- **Bloc**: For state management.

## Getting Started

To get started with the project, follow the steps below:

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Firebase account: [Firebase Console](https://console.firebase.google.com/)

### Installation

1. **Clone the repository:**

    ```bash
    git clone https://github.com/yourusername/ecommerce_app.git
    cd ecommerce_app
    ```

2. **Install dependencies:**

    ```bash
    flutter pub get
    ```

3. **Set up Firebase:**

    - Create a new project in Firebase Console.
    - Add an Android and/or iOS app to your Firebase project.
    - Download the `google-services.json` file for Android and place it in the `android/app` directory.
    - Download the `GoogleService-Info.plist` file for iOS and place it in the `ios/Runner` directory.
    - Enable Firebase Authentication and Firestore Database in the Firebase Console.

4. **Run the app:**

    ```bash
    flutter run
    ```

## Project Structure

The project follows a feature-based folder structure:
backend services: pacakages
UI: lib
