import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_sample/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_sample/jewellery.dart';
import 'package:my_sample/logistics.dart';
import 'package:my_sample/school%20signup.dart';
import 'package:my_sample/screen1.dart';
import 'package:my_sample/screen9.dart';
import 'package:my_sample/screenlogin.dart';

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
        home: screeneight(),
        routes: {
          'screen_9': (ctx) {
            return screen_nine();
          },
        });
  }
}

class screeneight extends StatelessWidget {
  const screeneight({Key? key}) : super(key: key);

  


  
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
        leading: Padding(padding: const EdgeInsets.all(2.0),
        child: Image.network('https://i.postimg.cc/SsSbCnZ5/Untitled-1.png'),
        
        
        ),
        
      ),
        body: SafeArea(
          child: Container(
            decoration:  BoxDecoration(
            
            image:   DecorationImage(
              image: NetworkImage('https://i.postimg.cc/k4ZcCKrz/Untitled-8.jpg'),
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
                  'TEACHER LOG-IN',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('screen_9');
                  },
                  child: Text('LOGIN'),
                ),
                Text(
                  'CLASS LOG-IN',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('screen_17');
                  },
                  child: Text('LOGIN'),
                ),
                const SizedBox(
                  height: 20,
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.of(context).pushNamed('');
                //   },
                //   child: Text('sign-out'),
                // ),
              ],
            ),
          ),
        ));
  }

  signout(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: ((context) => screenlogin())),
        (route) => false);
  }
}
