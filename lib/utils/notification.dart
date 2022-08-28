import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

const AndroidNotificationChannel channel = AndroidNotificationChannel(
  'high_importance_channel',
  "high_importance_notification",
);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  // ignore: avoid_print
  print("handling a background message : ${message.messageId}");
  // ignore: avoid_print
  print(message.data);
}

class FirebaseNotification {
  initialize() async {
    await Firebase.initializeApp();
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    var initializationSettingAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    // ignore: non_constant_identifier_names, unused_local_variable
    var initialzationSettings =
        InitializationSettings(android: initializationSettingAndroid);

    flutterLocalNotificationsPlugin.initialize(initialzationSettings);
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      // ignore: unnecessary_null_comparison
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
                android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              icon: android.smallIcon,
            )));
      }
    });
  }

  Future<String?
  
  
  
  
  
  
  
  
  > getToken() async {
    String? token = await FirebaseMessaging.instance.getToken();
    // ignore: avoid_print
    print(token);
    return token;
  }

  subscribeToTopic(String topic) async {
    await FirebaseMessaging.instance.subscribeToTopic(topic);
  }
}
