import 'package:firebase_messaging/firebase_messaging.dart';

Future<NotificationSettings> requestNotificationPermissions() async {
  final permissionsRequest =
      await FirebaseMessaging.instance.requestPermission();

  if (permissionsRequest.authorizationStatus ==
      AuthorizationStatus.authorized) {
    print('User granted permission');
  } else if (permissionsRequest.authorizationStatus ==
      AuthorizationStatus.provisional) {
    print('User granted provisional permission');
  } else {
    print('User declined or has not accepted permission');
  }

  return permissionsRequest;
}
