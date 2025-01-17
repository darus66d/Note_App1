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
    apiKey: 'AIzaSyBxwKWlYSgWuEwIjMA8D4Pu757aRRT-5t4',
    appId: '1:130543692766:web:49f8e4dd1c58844ad14b4f',
    messagingSenderId: '130543692766',
    projectId: 'note-app1-1c23e',
    authDomain: 'note-app1-1c23e.firebaseapp.com',
    storageBucket: 'note-app1-1c23e.firebasestorage.app',
    measurementId: 'G-F5Y7CE7KEJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB6e_D_4MU6GK76KUFfUt6wLgjzfACy0Dc',
    appId: '1:130543692766:android:c9936f9db1870fa7d14b4f',
    messagingSenderId: '130543692766',
    projectId: 'note-app1-1c23e',
    storageBucket: 'note-app1-1c23e.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAfWM8PFikxX91l20X38i2TeGMDIuFFH6I',
    appId: '1:130543692766:ios:f699da79fd18b850d14b4f',
    messagingSenderId: '130543692766',
    projectId: 'note-app1-1c23e',
    storageBucket: 'note-app1-1c23e.firebasestorage.app',
    iosBundleId: 'com.noteapp1.noteApp1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAfWM8PFikxX91l20X38i2TeGMDIuFFH6I',
    appId: '1:130543692766:ios:f699da79fd18b850d14b4f',
    messagingSenderId: '130543692766',
    projectId: 'note-app1-1c23e',
    storageBucket: 'note-app1-1c23e.firebasestorage.app',
    iosBundleId: 'com.noteapp1.noteApp1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBxwKWlYSgWuEwIjMA8D4Pu757aRRT-5t4',
    appId: '1:130543692766:web:0fc41da90f842146d14b4f',
    messagingSenderId: '130543692766',
    projectId: 'note-app1-1c23e',
    authDomain: 'note-app1-1c23e.firebaseapp.com',
    storageBucket: 'note-app1-1c23e.firebasestorage.app',
    measurementId: 'G-PS9VV409PJ',
  );
}
