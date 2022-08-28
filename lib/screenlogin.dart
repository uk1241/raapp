import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_sample/screen8.dart';
import 'package:my_sample/widgets/bottomnavbar.dart';

class screenlogin extends StatefulWidget {
  screenlogin({Key? key}) : super(key: key);

  @override
  State<screenlogin> createState() => _screenloginState();
}

class _screenloginState extends State<screenlogin> {
  //controller initialisation
  TextEditingController _username = TextEditingController();
  // TextEditingController _email = TextEditingController();
  TextEditingController _phonenumber = TextEditingController();

  //controller

  bool isDataMatached = true;

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'RACT',
          textAlign: TextAlign.left,
        ),
        // centerTitle: true,
        backgroundColor: Color.fromARGB(181, 32, 126, 202),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network('https://i.postimg.cc/SsSbCnZ5/Untitled-1.png'),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:
                  NetworkImage('https://i.postimg.cc/9FyrJCrh/Untitled-7.jpg'),
              fit: BoxFit.cover,
            ),
            // color: Colors.blueGrey,
            // border: Border.all(color: Colors.black, width: 5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _username,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'UserName',
                    ),
                    // validator: (value) {
                    //   // if (isDataMatached) {
                    //   //   return null;
                    //   // } else {
                    //   //   return 'error';
                    //   // }
                    //   if (value == null || value.isEmpty) {
                    //     return 'value is empty';
                    //   } else {
                    //     return null;
                    //   }
                    // },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _phonenumber,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                    ),
                    // validator: (value) {
                    //   // if (isDataMatached) {
                    //   //   return null;
                    //   // } else {
                    //   //   return 'error';
                    //   // }
                    //   if (value == null || value.isEmpty) {
                    //     return 'value is empty';
                    //   } else {
                    //     return null;
                    //   }
                    // },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // if (_formkey.currentState!.validate()) {
                      //   checklogin(context);
                      // } else {
                      //   print('data empty');
                      // }
                      // ;

                      // checklogin(context);
                      FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: _username.text, password: _phonenumber.text);
                      Navigator.of(context).pushNamed('screen_16');
                    },
                    icon: Icon(Icons.check),
                    label: const Text('submit'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomnavbar(),
    );
  }

// //function for username and password check
//   void checklogin(BuildContext ctx) {
//     final _username = _usernamecontroller.text;
//     final _password = _passwordcontroller.text;

//     //condition checking
//     if (_username == _password) {
//       print('uesrname and paswword matches correctly');

//       Navigator.of(ctx).pushReplacement(
//           MaterialPageRoute(builder: ((ctx) => screeneight())));

//       //go to homepage
//     } else {
//       print('username and password doesnot match');
//     }
//   }
// }
}
