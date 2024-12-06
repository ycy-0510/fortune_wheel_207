# Spin the Wheel Program for a Funfair Event

## Overview

This is a Spin the Wheel app developed using Flutter and the `flutter_fortune_wheel` package. It provides an engaging and customizable spinning wheel experience perfect for funfair events, games, or prize draws. The app is user-friendly, flexible, and visually appealing.

## Features

-	Smooth Spinning Animation: Powered by flutter_fortune_wheel for a polished and responsive wheel.
-	Customizable Prizes: Easily modify the wheel’s segments to display your desired options or rewards.
-	Randomized and Fair Results: Built-in randomization ensures unpredictability.
-	Lightweight and Responsive: Works seamlessly across devices with responsive design.
-	Configurable Spin Behavior: Adjust spin duration, stopping mechanism, and more.

## Requirements

To run this app, you’ll need:
-	Flutter SDK (version 3.0+ recommended)
-	Dart Programming Language
-	A code editor like Android Studio or Visual Studio Code
-	A device emulator or physical device for testing

## Installation

1.	Clone the Repository:
```bash
git clone https://github.com/your-repo/spin_the_wheel_flutter.git
cd spin_the_wheel_flutter
```
2.	Install Dependencies:
Run the following command to fetch required packages:
```bash
flutter pub get
```
3. Run the App:
Launch the app on a connected device or emulator:
```bash
flutter run
```
## How to Customize
Modify the Wheel Segments
Update the items list in lib/main.dart to define the wheel’s sections:
```dart
[
 FortuneItem(
      child: Text('仙草乙份,只收10元'),
      style: FortuneItemStyle(color: Color(0xFFA6AEBF)),
    ),
]
```