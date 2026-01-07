# Flutter Notes App

A simple Notes application built using **Flutter** and **Firebase** to demonstrate authentication, secure CRUD operations, basic UI/state management, and Android APK delivery.

---

##  Features

- Email & Password Authentication
- Create, Read, Update, Delete notes
- User-specific notes (no cross-user access)
- Search notes by title (client-side)
- Swipe actions:
    - Swipe right → Edit note
    - Swipe left → Delete note
- Clean and user-friendly UI
- Logout confirmation dialog
- Android APK build support

---

##  Tech Stack

- Flutter
- Firebase Authentication
- Cloud Firestore
- Riverpod (State Management)

---

##  Project Setup

1. Install Flutter SDK
2. Configure an Android emulator or connect a physical device
3. Create a Firebase project
4. Enable **Email/Password Authentication**
5. Enable **Cloud Firestore**
6. Add `google-services.json` to the Android project

---

## Run the App Locally

```bash
flutter pub get
flutter run


 Firestore Database Structure

users (collection)
 └── {userId} (document)
     └── notes (subcollection)
         └── {noteId} (document)
             ├── title
             ├── content
             ├── created_at
             ├── updated_at
