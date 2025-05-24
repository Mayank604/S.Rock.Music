# 🎵 Music Services Module - Flutter App

This Flutter app displays music-related services using data fetched dynamically from Firebase Firestore. The app is designed with MVVM architecture using `Provider` for state management and showcases a responsive and interactive UI.

---

## 📱 Features


- 🎨 Beautiful service card UI (Figma-based)
- 🔥 Dynamic data loading from Firestore
- 🧠 MVVM Architecture
- ✅ State Management using `Provider`
- 📱 Built for Android

---

## 🎥 Demo

Video link : https://drive.google.com/file/d/1xuXez-bLHcvZ79oiNwltSsZFN-oMHiwN/view?usp=sharing

Screenshot:

<img width="314" alt="Screenshot 2025-05-24 at 11 47 24 PM" src="https://github.com/user-attachments/assets/82a49069-a14a-4755-9f20-085ff8db8495" />



---

## 📁 Folder Structure

<img width="767" alt="Screenshot 2025-05-24 at 11 48 57 PM" src="https://github.com/user-attachments/assets/13e0cab6-de62-4e24-a298-5041c90bce80" />

---

## 🧩 Approach

1. **Figma to Flutter UI**: Translated the design into a responsive UI using custom `ServiceCard` widgets.
2. **Firebase Setup**: Configured Firestore to store and retrieve service data in real-time.
3. **Model Creation**: Defined a `ServiceModel` to map Firestore data.
4. **MVVM Structure**:
   - **Model**: Holds service data structure.
   - **ViewModel**: Handles Firestore interaction and state updates.
   - **View**: Displays data using widgets and listens to ViewModel via `Provider`.
5. **Provider Integration**: Used `ChangeNotifierProvider` for clean and reactive state management.

---
## FireStore Database

<img width="1116" alt="Screenshot 2025-05-24 at 11 18 12 PM" src="https://github.com/user-attachments/assets/cf0b7a1d-4b09-4d3b-a8bd-ad04af098f38" />

---
## 🛠️ Tech Stack

- **Flutter** (3.x)
- **Firebase Firestore**
- **Provider** (State Management)
- **MVVM Architecture**
