# 📱 Flutter Mobile Development - Summer Dev Orange Digital Center 2025

## ✅ Day 1: Introduction to Mobile Development

### 📱 Types of Mobile Development

* **Native Development**

  * Platform-specific development.
  * Examples: `Kotlin` for Android, `Swift` for iOS.

* **Hybrid Development**

  * Built using web technologies and wrapped in a native shell.
  * Example: `Ionic`.

* **Cross-Platform Development**

  * A single codebase is used to deploy apps on multiple platforms.
  * Technologies: `Flutter`, `React Native`.

* **Multiplatform (KMP - Kotlin Multiplatform)**

  * Business logic is shared across platforms.
  * UI is written natively using tools like `Jetpack Compose` (Android) or `SwiftUI` (iOS).
  * Example: `Kotlin Multiplatform Mobile (KMM)`.

---

## 🚀 Day 2: Flutter Basics

### 📦 Flutter Widgets

* Widgets are the building blocks of the UI in Flutter.

#### Types of Widgets:

* **StatelessWidget**

  * Used for static content.
  * Example: splash screens, static displays.

* **StatefulWidget**

  * Used for dynamic content that changes over time.
  * Example: counters, user interactions.

* **InheritedWidget**

  * Used for propagating state across the widget tree (state management).

---

### 🛠️ Common Flutter Commands

```bash
flutter doctor       # Check for environment issues
flutter --version    # Display current Flutter version
flutter create my_project_name   # Create a new Flutter project
flutter run          # Run the project
flutter pub get      # Install dependencies
flutter upgrade       # Upgrade Flutter SDK
```

---

### 📦 Packages & Dependencies

* Browse and install Flutter packages via [pub.dev](https://pub.dev/packages)
* Example search for the `intl` package: [https://pub.dev/packages?q=intl](https://pub.dev/packages?q=intl)

---

### 🧱 `child` vs `children` in Flutter Widgets

* `child`: accepts a **single** widget

  ```dart
  child: Text("Hello")
  ```

* `children`: accepts a **list** of widgets

  ```dart
  children: [
    Text("Hello"),
    Icon(Icons.star),
  ]
  ```

---

### 🗂 Recommended Folder Structure

```
lib/
├── screens/       # Screen-level widgets (often use Scaffold)
├── widgets/       # Reusable UI components
├── models/        # Data models and JSON parsing
├── data/          # Mocked/fake data for testing
└── main.dart      # Entry point of the app
```

---

### 🌌 APOD API (Astronomy Picture of the Day)

* NASA’s public API: [https://api.nasa.gov/](https://api.nasa.gov/)
* Useful for fetching real-world data and practicing HTTP requests.

---

### 🧭 Navigation in Flutter

```dart
Navigator.of(context).push(
  MaterialPageRoute(
    builder: (context) => ApodDetailsScreen(item: apod),
  ),
);
```

---

### GestureDetector

* A widget that adds interactivity to other widgets.

```dart
GestureDetector(
  onTap: () {
    // Handle tap
  },
  child: YourWidgetHere(),
)
```

---

## 🌐 Day 3: Fetching Data from the Network

* Goal: Learn how to make HTTP requests in Flutter.
* Use packages like `http` to fetch data from APIs.
* Example use case: Fetching images from NASA's APOD API.

📄 Read more on network permissions (Android):
[uses-permission element in AndroidManifest.xml](https://developer.android.com/guide/topics/manifest/uses-permission-element)
