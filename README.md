# 💬 Flutter Chat Application (`course_third_app`)

Welcome to the repository for **`course_third_app`**, a feature-rich, modern real-time chat application built using **Flutter** and **Dart**, powered by **Firebase** for backend services and authentication.

---

## ✨ Features & Highlights

*   🔐 **Firebase Authentication**: Secure user sign-up, login, and session management.
*   💬 **Real-time Messaging**: Instant message delivery and syncing using Cloud Firestore.
*   🚀 **Hero Animations**: Smooth and fluid transitions between screens to elevate the user experience.
*   ✨ **Animated Builder**: Custom, performant animations for UI components and transitions.
*   🧹 **Clean Code Architecture**: Organized following best practices, separation of concerns, and scalable folder structures.

---

## 🛠️ Tech Stack & Tools

*   **Framework**: [Flutter](https://flutter.dev/) (Dart)
*   **Backend & Auth**: [Firebase Authentication & Cloud Firestore](https://firebase.google.com/)
*   **State Management**: Provider / Riverpod / Bloc (configurable based on your setup)
*   **UI & Animations**: `Hero`, `AnimatedBuilder`, Custom Widgets

---

## 📂 Project Structure (Clean Code)

```text
lib/
├── core/             # Constants, themes, routes, and global utilities
├── features/         # Feature-based modular structure
│   ├── auth/         # Authentication (Login, Register, Firebase service)
│   └── chat/         # Chat rooms, messaging screen, message models
├── shared/           # Reusable widgets, custom animations, common components
└── main.app          # App entry point
```

---

## 🚀 Getting Started

Follow these steps to run the project locally on your machine:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/course_third_app.git
   ```

2. **Navigate to the project directory:**
   ```bash
   cd course_third_app
   ```

3. **Install dependencies:**
   ```bash
   flutter pub get
   ```

4. **Configure Firebase:**
    * Create a new project on the [Firebase Console](https://console.firebase.google.com/).
    * Enable **Authentication** (Email/Password) and **Cloud Firestore**.
    * Add your `google-services.json` (for Android) and `GoogleService-Info.plist` (for iOS) to the respective directories.

5. **Run the app:**
   ```bash
   flutter run
   ```

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the issues page.

---

## 📝 License

This project is created for educational and course purposes.