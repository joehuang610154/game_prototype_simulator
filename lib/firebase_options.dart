// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCQRMXxtysP8nZZkwEnxBv5s5RQu2Tscws',
    appId: '1:57466500720:web:2e6e30ed1cdccc8bb326b5',
    messagingSenderId: '57466500720',
    projectId: 'game-prototype-simulator',
    authDomain: 'game-prototype-simulator.firebaseapp.com',
    storageBucket: 'game-prototype-simulator.firebasestorage.app',
    measurementId: 'G-KGL4ENQCXS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBgZwF-BGtmNPnu5LzJ7SLgRUT_TjvBs14',
    appId: '1:57466500720:android:500eb87d7362bce5b326b5',
    messagingSenderId: '57466500720',
    projectId: 'game-prototype-simulator',
    storageBucket: 'game-prototype-simulator.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAMyCjvqGfSfmc5j3BPSHIXSan14tgZ6gk',
    appId: '1:57466500720:ios:ab1c3cc2622b8bc7b326b5',
    messagingSenderId: '57466500720',
    projectId: 'game-prototype-simulator',
    storageBucket: 'game-prototype-simulator.firebasestorage.app',
    iosBundleId: 'com.example.gamePrototypeSimulator',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAMyCjvqGfSfmc5j3BPSHIXSan14tgZ6gk',
    appId: '1:57466500720:ios:ab1c3cc2622b8bc7b326b5',
    messagingSenderId: '57466500720',
    projectId: 'game-prototype-simulator',
    storageBucket: 'game-prototype-simulator.firebasestorage.app',
    iosBundleId: 'com.example.gamePrototypeSimulator',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCQRMXxtysP8nZZkwEnxBv5s5RQu2Tscws',
    appId: '1:57466500720:web:919d1202d6ef180cb326b5',
    messagingSenderId: '57466500720',
    projectId: 'game-prototype-simulator',
    authDomain: 'game-prototype-simulator.firebaseapp.com',
    storageBucket: 'game-prototype-simulator.firebasestorage.app',
    measurementId: 'G-JYL3X961PL',
  );

}