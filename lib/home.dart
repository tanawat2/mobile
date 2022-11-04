// ignore_for_file: avoid_print

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mn/commentpage.dart';
import 'homepage.dart';


//
const AndroidNotificationChannel channel = AndroidNotificationChannel(
  'high_importance_channel', // id
  'High Importance Notifications', // title
  description:
      'This channel is used for important notifications.', // description
  importance: Importance.max,
);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(title: ''),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  String? message;
  String channelId = "1000";
  String channelName = "FLUTTER_NOTIFICATION_CHANNEL";
  String channelDescription = "FLUTTER_NOTIFICATION_CHANNEL_DETAIL";
  FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  final auth = FirebaseAuth.instance;

  @override
  initState() {
    var initializationSettingsAndroid =
        AndroidInitializationSettings('notiicon');

    var initializationSettingsIOS = DarwinInitializationSettings(
        onDidReceiveLocalNotification: (id, title, body, payload) async {
      print("onDidReceiveLocalNotification called.");
    });

    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);

    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: (payload) async {
      // when user tap on notification.
      print("onSelectNotification called.");
      setState(() {
        message = payload.payload;
      });
    });

    initFirebaseMessaging();

    super.initState();
  }

  void initFirebaseMessaging() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification notification = message.notification!;
      AndroidNotification? android = message.notification?.android;

      if (android != null) {
        var a = notification.title.toString();
        var b = notification.body.toString();
        sendNotification(a, b);
      }
    });

    firebaseMessaging.getToken().then((String? token) {
      assert(token != null);
      print("Token : $token");
    });
  }

  sendNotification(String title, String body) async {
    const BigPictureStyleInformation bigPictureStyleInformation =
        BigPictureStyleInformation(DrawableResourceAndroidBitmap('flutter'),
            largeIcon: DrawableResourceAndroidBitmap(
              'notiicon',
            ));

    var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
      '10000',
      'FLUTTER_NOTIFICATION_CHANNEL',
      channelDescription: 'FLUTTER_NOTIFICATION_CHANNEL_DETAIL',
      importance: Importance.max,
      priority: Priority.high,
      styleInformation: bigPictureStyleInformation,
    );

    var iOSPlatformChannelSpecifics = const DarwinNotificationDetails();

    var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin
        .show(111, title, body, platformChannelSpecifics, payload: '');
  }

  Future<void> sendPushMessage() async {
    firebaseMessaging.getToken().then((String? _token) async {
      assert(_token != null);
      if (_token == null) {
        print('Unable to send FCM message, no token exists.');
        return;
      }

      var st = constructFCMPayload(_token);
      try {
        await http.post(
          Uri.parse('https://fcm.googleapis.com/fcm/send'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization':
                'key=AAAA8Ii9TQM:APA91bEMJa8TqQO--urNO8L_YJXJMGuZeyWa5b6z-P1O2tl16fTPY1QRqD-K-H2hbouF6WFLd05VhK4Kz_iAJIUANWdfPmdAwfOt2w7xjTQAdnOFv3PUafhhNsOEy7iVOr2eZaax4F6B',
          },
          body: st,
        );
        print('FCM request for device sent!');
      } catch (e) {
        print(e);
      }
      print("Token : $_token");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text(widget.title),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                auth.signOut();
                Navigator.pop(context);
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sendPushMessage();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.notifications_active),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('12 Zodiac Signs'),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                child: Icon(
                  Icons.mood,
                  size: 42,
                ),
              ),
            ),

          ListTile(
            leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/Aries.jpg') ,
            ),
              title: const Text('Aries'),
              onTap: () {
                Navigator.pushNamed(context, '/Ariespage');
              },
            ),
            ListTile(
             leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/Taurus.jpg') ,
             ),
              title: const Text('Taurus'),
              onTap: () {
                Navigator.pushNamed(context, '/Tauruspage');
              },
            ),
             ListTile(
               leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/Gemini.jpg') ,
             ),
              title: const Text('Gemini'),
              onTap: () {
                Navigator.pushNamed(context, '/Geminipage');
              },
            ),
             ListTile(
               leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/Cancer.jpg') ,
             ),
              title: const Text('Cancer'),
              onTap: () {
                Navigator.pushNamed(context, '/Cancerpage');
              },
            ),
             ListTile(
              leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/Leo.jpg') ,
             ),
              title: const Text('Leo'),
              onTap: () {
                Navigator.pushNamed(context, '/Leopage');
              },
            ),
             ListTile(
              leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/Virgo.jpg') ,
             ),
              title: const Text('Virgo'),
              onTap: () {
                Navigator.pushNamed(context, '/Virgopage');
              },
            ),
            ListTile(
               leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/Libra.jpg') ,
             ),
              title: const Text('Libra'),
              onTap: () {
                Navigator.pushNamed(context, '/Librapage');
              },
            ),
            ListTile(
              leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/Scorpio.jpg') ,
             ),
              title: const Text('Scorpio'),
              onTap: () {
                Navigator.pushNamed(context, '/Scorpiopage');
              },
            ),
            ListTile(
              leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/Sagittarius.jpg') ,
             ),
              title: const Text('Sagittarius'),
              onTap: () {
                Navigator.pushNamed(context, '/Sagittariuspage');
              },
            ),
             ListTile(
             leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/Capricorn.jpg') ,
             ),
              title: const Text('Capricorn'),
              onTap: () {
                Navigator.pushNamed(context, '/Capricornpage');
              },
            ),
             ListTile(
             leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/Aquarius.jpg') ,
             ),
              title: const Text('Aquarius'),
              onTap: () {
                Navigator.pushNamed(context, '/Aquariuspage');
              },
            ),
            ListTile(
              leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/Pisces.jpg') ,
             ),
              title: const Text('Pisces'),
              onTap: () {
                Navigator.pushNamed(context, '/Piscespage');
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Setting'),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
            ListTile(
              leading: const Icon(Icons.comment),
              title: const Text('Comment'),
              onTap: () {
                Navigator.pushNamed(context, '/commentpage');
              },
            ),
          ],
        ),
      ),
      body:  const BodyHome(),
    );
  }

  int _messageCount = 0;
  String constructFCMPayload(String token) {
    _messageCount++;
    return jsonEncode({
      'to': token,
      'data': {
        'via': 'Firebase Cloud Messaging!!! ',
        'count': _messageCount.toString(),
      },
      'notification': {
        'title': 'Hello, Welcome to my App',
        'body': 'I hope you enjoy it', //($_messageCount)
      },
    });
  }
}
