import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:push_notification_poc/access_firebase_token.dart';
import 'package:push_notification_poc/notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationServices.requestNotificationPermission();
    notificationServices.forgroundMessage();
    notificationServices.firebaseInit(context);
    notificationServices.setupInteractMessage(context);
    notificationServices.isTokenRefresh();

    notificationServices.getDeviceToken().then((value) {
      if (kDebugMode) {
        print('device token');
        print(value);
        notificationServices.deviceTokenSave(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Notifications'),
      ),
      body: Center(
        child: TextButton(
            onPressed: () async {
              AccessTokenFirebase accessTokenFirebase = AccessTokenFirebase();
              String token = await accessTokenFirebase.getAccessToken();
              print(token);
              notificationServices.getDeviceToken().then((value) async {
                // var data = {
                //   'to': value.toString(),
                //   'notification': {
                //     'title': 'Title1',
                //     'body': 'Body1',
                //     "sound": "jetsons_doorbell.mp3"
                //   },
                //   'android': {
                //     'notification': {
                //       'notification_count': 23,
                //     },
                //   },
                //   'data': {'type': 'msj', 'id': 'Asif Taj'}
                // };
                print(value);
                var data1 = {
                  "message": {
                    "token": value.toString(),
                    "notification": {
                      "body": "This is an FCM notification message!",
                      "title": "FCM Message"
                    },
                    // "data": {
                    //   "keysandvalues": "{\"type\": \"msg\", \"id\": \"1234\"}"
                    // },
                  }
                };

                await http.post(
                    Uri.parse(
                        'https://fcm.googleapis.com/v1/projects/fir-setup-4dc57/messages:send'),
                    body: jsonEncode(data1),
                    headers: {
                      'Content-Type': 'application/json; charset=UTF-8',
                      'Authorization': 'Bearer $token'
                    }).then((value) {
                  if (kDebugMode) {
                    print(value.body.toString());
                    print('...............notification send success');
                  }
                }).onError((error, stackTrace) {
                  if (kDebugMode) {
                    print(error);
                  }
                });
              });
            },
            child: Text('Send Notifications')),
      ),
    );
  }
}
