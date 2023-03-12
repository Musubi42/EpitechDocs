---
sidebar_position: 2
title: Developer documentation
---

# Developer documentation

## How to get started in the development

Clone the project 

```git
git clone https://github.com/EpitechMscProPromo2025/T-DEV-600-LIL-6-1-redditech-raphael.thibaut.git
```

#### Linux User

Switch to the main branch
```bash
git switch main
```

#### Mac User

Switch to the IOS branch
```bash
git switch IOS
```

### Install the dependencies

Run this command to install the pubspec.yml dependencies 

```bash
flutter pub get
```

###  Prerequisites to start the app

Download Flutter and Dart.

[Flutter installation guide](https://docs.flutter.dev/get-started/install)

To test if your installatin worked properly run this command

```bash
flutter doctor
```

If you've doned the installation properly you should see the same result.
![login](/img/RedSync/flutter_doctor.png)


As we are developping an Mobile app, it's better and simpler to connect a mobile throw USB to your computer.

##### Android developing device

Enable USB debugging
Go to your Options > System > Developer options > USB debugging

Install adb to enable debugging between your mobile device and your computer.
[Follow this link to do it](https://www.xda-developers.com/install-adb-windows-macos-linux/)

### Run the application

Ounce the prerequisites are fullfilled, run this command to start the application

```bash
flutter run -t lib/Login.dart
```

We use the parameter `-t lib/Login.dart` so we can tells flutter to modify the entrypoint of the app, changing `main.dart` (the default entrypoint) by `Login.dart`