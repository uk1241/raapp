import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_sample/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_sample/jewellery.dart';
import 'package:my_sample/logistics.dart';
import 'package:my_sample/school%20signup.dart';
import 'package:my_sample/screen1.dart';
import 'package:my_sample/widgets/bottomnavbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: screenone(),
        routes: {
          'screen_8': (ctx) {
            return screenone();
          },
        });
  }
}

class screenone extends StatelessWidget {
  const screenone({Key? key}) : super(key: key);

    static ValueNotifier<int>selectedindexnotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        title: const Text( 
          'ASSOCIATE',
          textAlign: TextAlign.left,
          ),
        // centerTitle: true,
        backgroundColor:Color.fromARGB(181, 32, 126, 202),
        leading: Padding(padding: const EdgeInsets.all(8.0),
        child: Image.network('https://i.postimg.cc/SsSbCnZ5/Untitled-1.png'),
        
        
        ),
        
      ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image:  DecorationImage(
              image: NetworkImage('https://i.postimg.cc/Ghzr0RXY/b5.jpg'),
              fit: BoxFit.cover,
              
              ),
              // color: Colors.blueGrey,
              // border: Border.all(color: Colors.black, width: 5),
            ),
            width: double.infinity,
            height: double.infinity,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text(
                  //   'LOGISTICS',
                  //   textAlign: TextAlign.center,
                  //   style: const TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 25,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.of(context).pushNamed('screen_4');
                  //   },
                  //   child: Text('login'),
                  // ),
                  Text(
                    '',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('screen_6');
                    },
                    child: Text('SCHOOL SIGN-UP'),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 197, 12, 6),
                    ),
                  ),
                  const SizedBox(
                      height: .0,
                    ),
                  Text(
                    '',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('screen_7');
                    },
                    child: Text('SCHOOL  LOG -IN'),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 197, 12, 6),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: bottomnavbar(),
        );
  }

  Future<void> checkuserloggedin() async {
    final sharedprefs = await SharedPreferences.getInstance();
  }
}
