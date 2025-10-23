# 🐻 Interactive Login Animation with Flutter & Rive

## ✨ Features

- **Interactive Character Animation**: A friendly bear character that responds to user interactions in real-time
- **Email Field Tracking**: The character's eyes follow along as you type your email
- **Password Privacy Mode**: The character covers its eyes when entering passwords
- **Smart Validation**: Visual feedback with success/failure animations based on input validation
- **Password Visibility Toggle**: Show/hide password functionality
- **Responsive Design**: Adapts beautifully to different screen sizes

## 🎨 What is Rive?

Rive is a powerful real-time animation platform that allows designers and developers to create interactive vector animations. Unlike static images or pre-rendered videos, Rive animations can dynamically respond to user input, application state, and other events through code control.

## 🧠 State Machine in Rive

For Rive animations, a **State Machine** serves as the intelligent brain behind interactive animations. It's a visual programming system that defines how your animation responds to user interactions and application events.

### 🎯 Core State Machine Inputs

- **`isChecking`** (Boolean) - Activates when user focuses on email field
- **`isHandsUp`** (Boolean) - Triggers eye-covering animation for password privacy  
- **`trigSuccess`** (Trigger) - Plays celebration sequence on valid input
- **`trigFail`** (Trigger) - Plays failure animation on invalid input
- **`numLook`** (Number) - Dynamically controls eye movement based on text length

### 🔄 How It Works

The State Machine creates a responsive feedback loop where character states seamlessly transition based on user actions, making the animation feel alive and interactive in real-time.

## 🛠️ Technologies

- **Flutter** - UI framework
- **Dart** - Programming language
- **Rive** - Interactive animations
- **Material Design** - UI components

## 🚀 How to Run

To get a local copy up and running, follow these simple steps.

1. **Clone the repo**

```bash
git  clone https://github.com/imVlado/login_w_animation
```

2. **Navigate to the project directory**

```bash
cd login_with_animation
```

3. **Install dependencies**

```bash
flutter pub get
```

4. **Run the app**

```bash
flutter run
```

## 📁 Project Structure

**Login_with_animation/**

- **assets/**
  - `animated_login_character.riv` - The Rive animation file
- **lib/**
  - `main.dart` - Main app entry point
  - **screens/**
    - `login_screen.dart` - The login screen UI and logic
- `pubspec.yaml` - Project dependencies and asset declarations

### Key Files

- **main.dart**: Initializes the Flutter application with MaterialApp
- **login_screen.dart**: Contains the complete login UI, animation controllers, validation logic, and state management

## 🎬 Demo

![App Demonstration](assets/demo.gif)
*The character reacts to email input, covers eyes for password entry, and provides visual feedback on login validation*

## 📚 Course Information

- **Course**: Computer Graphics
- **Professor**: Rodrigo Fidel Gaxiola Sosa

## 👏 Credits

This project features a remixed Rive animation:

- **Original Animation**: [JcToon](https://rive.app/community/jctoon/)
- **Remix By**: [Dexterc](https://rive.app/community/dexterc/)
- **Source**: [Login Machine Remix on Rive](https://rive.app/marketplace/3645-7621-remix-of-login-machine/)
