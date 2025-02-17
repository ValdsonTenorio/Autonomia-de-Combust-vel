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
    apiKey: 'AIzaSyAFgklzlBkIQ8qxZMMRFB6CntZTtPfvZ1w',
    appId: '1:1082275167324:web:dd6493d014ed8b55407a99',
    messagingSenderId: '1082275167324',
    projectId: 'abastecimento-326cf',
    authDomain: 'abastecimento-326cf.firebaseapp.com',
    storageBucket: 'abastecimento-326cf.firebasestorage.app',
    measurementId: 'G-HQQMZZ0RM4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCROE8imd5n-o82pa1NjvbqNvKWwmGVSmo',
    appId: '1:1082275167324:android:e5e76e53c0377479407a99',
    messagingSenderId: '1082275167324',
    projectId: 'abastecimento-326cf',
    storageBucket: 'abastecimento-326cf.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA16i6xu9YGY9PuVO19p2GxZ33nhky9f5Q',
    appId: '1:1082275167324:ios:0f6542cbc51a2430407a99',
    messagingSenderId: '1082275167324',
    projectId: 'abastecimento-326cf',
    storageBucket: 'abastecimento-326cf.firebasestorage.app',
    iosBundleId: 'com.example.controlegasolina',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA16i6xu9YGY9PuVO19p2GxZ33nhky9f5Q',
    appId: '1:1082275167324:ios:0f6542cbc51a2430407a99',
    messagingSenderId: '1082275167324',
    projectId: 'abastecimento-326cf',
    storageBucket: 'abastecimento-326cf.firebasestorage.app',
    iosBundleId: 'com.example.controlegasolina',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAFgklzlBkIQ8qxZMMRFB6CntZTtPfvZ1w',
    appId: '1:1082275167324:web:49b8eb4eeeb67cba407a99',
    messagingSenderId: '1082275167324',
    projectId: 'abastecimento-326cf',
    authDomain: 'abastecimento-326cf.firebaseapp.com',
    storageBucket: 'abastecimento-326cf.firebasestorage.app',
    measurementId: 'G-83DNRJX8XN',
  );
}
