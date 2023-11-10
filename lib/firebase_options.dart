// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAzBf3SGwXJ4jyp3CYvDsCPIM__qZkVtt4',
    appId: '1:819111597239:web:455d04936dfa103785e932',
    messagingSenderId: '819111597239',
    projectId: 'apartee-620a4',
    authDomain: 'apartee-620a4.firebaseapp.com',
    databaseURL: 'https://apartee-620a4-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'apartee-620a4.appspot.com',
    measurementId: 'G-LDWQQKP8EL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBKYY0qYFqGdzU9eCEDjpG_DNO5SiwnG7Y',
    appId: '1:819111597239:android:b41de9dc64c4c89885e932',
    messagingSenderId: '819111597239',
    projectId: 'apartee-620a4',
    databaseURL: 'https://apartee-620a4-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'apartee-620a4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCub0hrLO798nbUyl3huy-3Whfat8ZtlBQ',
    appId: '1:819111597239:ios:cb7fd41b0aad10fd85e932',
    messagingSenderId: '819111597239',
    projectId: 'apartee-620a4',
    databaseURL: 'https://apartee-620a4-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'apartee-620a4.appspot.com',
    iosClientId: '819111597239-7829v03pc1n2qlb92m54m0asqmrql52c.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterDemo02',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCub0hrLO798nbUyl3huy-3Whfat8ZtlBQ',
    appId: '1:819111597239:ios:f49a82439f8fae5d85e932',
    messagingSenderId: '819111597239',
    projectId: 'apartee-620a4',
    databaseURL: 'https://apartee-620a4-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'apartee-620a4.appspot.com',
    iosClientId: '819111597239-uod4ig3qes930e1todbgtnhj3o4trck1.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterDemo02.RunnerTests',
  );
}
