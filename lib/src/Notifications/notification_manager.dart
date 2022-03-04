// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class FirebaseNotificationManager {
//   FirebaseNotificationManager._();

//   factory FirebaseNotificationManager() => _instance;

//   static final FirebaseNotificationManager _instance =
//       FirebaseNotificationManager._();

//   final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

//   bool _initialized = false;
//   FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       new FlutterLocalNotificationsPlugin();
//   Future<void> init() async {
//     // var email = await PreferenceHelper().getEmailId();

//     try {
//       if (!_initialized) {
//         _firebaseMessaging.requestPermission();
//         _firebaseMessaging.configure();
//         var initializationSettingsAndroid =
//             new AndroidInitializationSettings('@mipmap/ic_launcher');
//         var initializationSettingsIOS = new IOSInitializationSettings();
//         var initializationSettings = new InitializationSettings(
//             android: initializationSettingsAndroid,
//             iOS: initializationSettingsIOS);
//         flutterLocalNotificationsPlugin.initialize(initializationSettings,
//             onSelectNotification: onSelectNotification);
//         // ignore: unused_local_variable
//         String firebaseToken = await PreferenceHelper().getFCmToken();

//         // if (firebaseToken == null || firebaseToken.isEmpty) {
//         String token = await _firebaseMessaging.getToken();
//         _firebaseMessaging.requestNotificationPermissions();
//         print("FirebaseMessaging token: $token");
//         await PreferenceHelper().setFCmToken(token);
//         // }

//         /*_firebaseMessaging.onTokenRefresh.listen((String token) async {
//         print("onTokenRefresh token: $token");
//         await PreferenceHelper().setFcmToken(token);
//       });*/
//         _firebaseMessaging.configure(
//           onMessage: (Map<String, dynamic> message) async {
//             print("onMessage");
//             print("XMAS onMessage data and notification ${message}");

//             // RemoteNotification notification = message.notification;
//             // AndroidNotification android = message.notification?.android;

//             checkNotification(message, true, "onMessage");
//           },
//           onResume: (Map<String, dynamic> message) async {
//             print("onResume");
//             print("XMAS onResume data and notification ${message}");

//             // RemoteNotification notification = message.notification;
//             // AndroidNotification android = message.notification?.android;

//             checkNotification(message, false, "onResume");
//           },
//           onLaunch: (Map<String, dynamic> message) async {
//             print("onLaunch");
//             print("XMAS onLaunch data and notification ${message}");

//             // RemoteNotification notification = message.notification;
//             // AndroidNotification android = message.notification?.android;

//             checkNotification(message, false, "onLaunch");
//           },
//         );

//         _initialized = true;
//       }
//     } catch (e) {
//       print(e);
//     }
//   }

//   Future onSelectNotification(String payload) async {
//     print("XMAS PayLoad $payload");
//     if (payload != null && payload != "") {
//       checkNotification(payload, false, "onSelectNotification");
//     }
//   }
// }
