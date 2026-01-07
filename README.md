# Flutter Notes App

A simple Notes application built using **Flutter** and **Firebase** as part of an assignment to demonstrate core Flutter fundamentals, authentication, secure CRUD operations, and Android build delivery.

---

## 🚀 Features

- Email & Password Authentication (Firebase Auth)
- Create, Read, Update, Delete notes
- Each user can access **only their own notes**
- Search notes by title (client-side)
- Swipe actions:
    - **Swipe right → Edit note**
    - **Swipe left → Delete note**
- Clean and user-friendly UI
- Logout confirmation dialog
- Android APK build support

---

## 🛠 Tech Stack

- Flutter
- Firebase Authentication
- Cloud Firestore
- Riverpod (State Management)

---

## 🔐 Authentication

- Users can sign up and log in using email & password
- Authentication state persists after app restart
- Proper error messages shown for invalid login, wrong password, or unregistered users

---

## 🧠 Firestore Data Structure

- users (collection)
- └── {userId} (document)
- └── notes (subcollection)
- └── {noteId} (document)
- ├── title
- ├── content
- ├── created_at
- ├── updated_at


## ▶️ Run Locally

```bash
flutter pub get
flutter run