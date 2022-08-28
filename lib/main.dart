import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_sample/jewellery.dart';
import 'package:my_sample/jewllerylogin.dart';
import 'package:my_sample/logistics.dart';
import 'package:my_sample/middle%20screen.dart';
import 'package:my_sample/models/user.dart';
import 'package:my_sample/page/face_recognition/camera_page.dart';
import 'package:my_sample/page/face_recognition/studentsignup.dart';
import 'package:my_sample/page/home_page.dart';
import 'package:my_sample/page/login_page.dart';
import 'package:my_sample/page/studentview.dart';
import 'package:my_sample/real_farmton.dart';
import 'package:my_sample/school%20signup.dart';
import 'package:my_sample/screen1.dart';
import 'package:my_sample/screen10.dart';
import 'package:my_sample/screen11.dart';
import 'package:my_sample/screen8.dart';
import 'package:my_sample/screen9.dart';
import 'package:my_sample/screenlogin.dart';
import 'package:my_sample/utils/local_db.dart';
import 'package:my_sample/widgets/bottomnavbar.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:my_sample/widgets/screenlogin2.dart';
// import 'package:face_recognition/face_recognition.dart';
import 'package:camera/camera.dart';
import 'package:hive/hive.dart';

// const save_key_name = 'userloggedin';
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  cameras = await availableCameras();
  await Hive.initFlutter();
  await HiveBoxes.initialize();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(myapp());
}

class myapp extends StatefulWidget {
  myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  List<String> recipents = ["8089234063", "7012824774"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // title: "Face Auth",
      home: Homescreen(),
      routes: {
        'screen_1': (ctx) {
          return Homescreen();
        },
        'screen_2': (ctx) {
          return middlescreen();
        },
        'screen_3': (ctx) {
          return screenone();
        },
        'screen_4': (ctx) {
          return screenfour();
        },
        'screen_5': (ctx) {
          return screenfive();
        },
        'screen_6': (ctx) {
          return screensix();
        },
        'screen_7': (ctx) {
          return screenlogin();
        },
        'screen_9': (ctx) {
          return screen_nine();
        },
        'screen_10': (ctx) {
          return screen_ten();
        },
        'screen_11': (ctx) {
          return screenlogin1();
        },
        'screen_12': (ctx) {
          return screeneleven();
        },
        'screen_13': (ctx) {
          return screenlogin2();
        },
        'screen_14': (ctx) {
          return forteen();
        },
        'screen_15': (ctx) {
          return LoginPage();
        },
        'screen_16': (ctx) {
          return screeneight();
        },
          'screen_17': (ctx) {
          return studentsignup();
        },
        'screen_18': (ctx) {
          return studentview();
        }
      },
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  static ValueNotifier<int> selectedindexnotifier = ValueNotifier(0);

  @override
  State<Homescreen> createState() {
    return _HomescreenState();
  }
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'ASSOCIATES',
          // style: TextStyle(fontFamily: 'robomonto'),
          textAlign: TextAlign.left,
        ),
        // centerTitle: true,
        backgroundColor: Color.fromARGB(181, 32, 126, 202),
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image.network('https://i.postimg.cc/SsSbCnZ5/Untitled-1.png'),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://i.postimg.cc/Y9qynqrD/bg6.jpg'),
              fit: BoxFit.cover,
            ),
            // color: Colors.blueGrey,
            // border: Border.all(color: Colors.black, width: 5),
          ),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('screen_15');
                },
                child: Icon(Icons.play_circle,
                    color: Color.fromARGB(255, 252, 251, 251)),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(25),
                  primary: Color.fromARGB(255, 29, 43, 122), // <-- Button color
                  onPrimary: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomnavbar(),
    );
  }

  // Future main() async {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   cameras = await availableCameras();
  //   await Hive.initFlutter();
  //   await Hive.openBox("user_details");
  //   await HiveBoxes.initialize();
  //   await SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.portraitUp,
  //     DeviceOrientation.portraitDown,
  //   ]);
  // }
}
