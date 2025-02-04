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
    apiKey: 'AIzaSyCqug5VNARjRwW79hfv4wQ4ZK65ms92fTs',
    appId: '1:522582271094:web:e26475c8ac455ae641ab57',
    messagingSenderId: '522582271094',
    projectId: 'fir-6289e',
    authDomain: 'fir-6289e.firebaseapp.com',
    storageBucket: 'fir-6289e.firebasestorage.app',
    measurementId: 'G-6JZPP1RWXK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBx_8W6uz-8F6U5mlCQxIak08cERst3nXc',
    appId: '1:522582271094:android:8d68c0f1cb33405841ab57',
    messagingSenderId: '522582271094',
    projectId: 'fir-6289e',
    storageBucket: 'fir-6289e.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAciiBSo4RK63ElubgLhICMIkBGQEYQ3_w',
    appId: '1:522582271094:ios:b37d6b81a58be84141ab57',
    messagingSenderId: '522582271094',
    projectId: 'fir-6289e',
    storageBucket: 'fir-6289e.firebasestorage.app',
    iosBundleId: 'com.novakode.firebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAciiBSo4RK63ElubgLhICMIkBGQEYQ3_w',
    appId: '1:522582271094:ios:b37d6b81a58be84141ab57',
    messagingSenderId: '522582271094',
    projectId: 'fir-6289e',
    storageBucket: 'fir-6289e.firebasestorage.app',
    iosBundleId: 'com.novakode.firebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCqug5VNARjRwW79hfv4wQ4ZK65ms92fTs',
    appId: '1:522582271094:web:e1995bfc726a7dce41ab57',
    messagingSenderId: '522582271094',
    projectId: 'fir-6289e',
    authDomain: 'fir-6289e.firebaseapp.com',
    storageBucket: 'fir-6289e.firebasestorage.app',
    measurementId: 'G-GMMCGG2V9Z',
  );
}
