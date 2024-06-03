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
    apiKey: 'AIzaSyAt8TZP6ufGVT_tOFHZf4HSbzIgmxMuS5Q',
    appId: '1:252522097441:web:4355ff3ae05f985a9c2c60',
    messagingSenderId: '252522097441',
    projectId: 'happyshop-8b1cf',
    authDomain: 'happyshop-8b1cf.firebaseapp.com',
    storageBucket: 'happyshop-8b1cf.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC8tjZNUMNOL5HFW6UwGoG4UBL-aKsRYmk',
    appId: '1:252522097441:android:6cff1eaa536889dc9c2c60',
    messagingSenderId: '252522097441',
    projectId: 'happyshop-8b1cf',
    storageBucket: 'happyshop-8b1cf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC8NHt3mU1KU5VzQJvRg9Pi8bjUa_OKY6I',
    appId: '1:252522097441:ios:de78364c6eaaf36e9c2c60',
    messagingSenderId: '252522097441',
    projectId: 'happyshop-8b1cf',
    storageBucket: 'happyshop-8b1cf.appspot.com',
    iosBundleId: 'com.example.happyShop',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC8NHt3mU1KU5VzQJvRg9Pi8bjUa_OKY6I',
    appId: '1:252522097441:ios:de78364c6eaaf36e9c2c60',
    messagingSenderId: '252522097441',
    projectId: 'happyshop-8b1cf',
    storageBucket: 'happyshop-8b1cf.appspot.com',
    iosBundleId: 'com.example.happyShop',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAt8TZP6ufGVT_tOFHZf4HSbzIgmxMuS5Q',
    appId: '1:252522097441:web:89ae402bbe38c89e9c2c60',
    messagingSenderId: '252522097441',
    projectId: 'happyshop-8b1cf',
    authDomain: 'happyshop-8b1cf.firebaseapp.com',
    storageBucket: 'happyshop-8b1cf.appspot.com',
  );
}