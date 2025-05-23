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
    apiKey: 'AIzaSyBIRDT1eFO_J1SVtTUPWJoJdIFRAwMrWQk',
    appId: '1:820851900101:web:ad64f609b181675cf3baac',
    messagingSenderId: '820851900101',
    projectId: 'surakshasakey-f4a45',
    authDomain: 'surakshasakey-f4a45.firebaseapp.com',
    storageBucket: 'surakshasakey-f4a45.appspot.com',
    measurementId: 'G-CERGKQQFVB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD0xI3YDbIGfrq7c1PO7VvJ644fUgfAwl4',
    appId: '1:820851900101:android:40abeb3f2bb7df1df3baac',
    messagingSenderId: '820851900101',
    projectId: 'surakshasakey-f4a45',
    storageBucket: 'surakshasakey-f4a45.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAfZWzJlq9SNNolwOHpNo0VPjsjm458ecg',
    appId: '1:820851900101:ios:b75768da1c4fc8bef3baac',
    messagingSenderId: '820851900101',
    projectId: 'surakshasakey-f4a45',
    storageBucket: 'surakshasakey-f4a45.appspot.com',
    iosBundleId: 'com.example.surakshaSakey',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAfZWzJlq9SNNolwOHpNo0VPjsjm458ecg',
    appId: '1:820851900101:ios:b75768da1c4fc8bef3baac',
    messagingSenderId: '820851900101',
    projectId: 'surakshasakey-f4a45',
    storageBucket: 'surakshasakey-f4a45.appspot.com',
    iosBundleId: 'com.example.surakshaSakey',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBIRDT1eFO_J1SVtTUPWJoJdIFRAwMrWQk',
    appId: '1:820851900101:web:f869d2a630c2df09f3baac',
    messagingSenderId: '820851900101',
    projectId: 'surakshasakey-f4a45',
    authDomain: 'surakshasakey-f4a45.firebaseapp.com',
    storageBucket: 'surakshasakey-f4a45.appspot.com',
    measurementId: 'G-6E89BQQH66',
  );

}