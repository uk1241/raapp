import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_sample/main.dart';
import 'package:my_sample/widgets/bottomnavbar.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
      home: screensix(),
    );
  }
}

List<String> recepients = ["8089234063"];

class screensix extends StatelessWidget {
  screensix({Key? key}) : super(key: key);

  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phonenumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'ASSOCIATES',
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
                  NetworkImage('https://i.postimg.cc/FKdpBYcR/Untitled-6.jpg'),
              fit: BoxFit.cover,
            ),
            // color: Colors.white30,
            // border: Border.all(color: Colors.black, width: 5),
          ),
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _username,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'SCHOOL NAME',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _email,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'EMAIL',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _phonenumber,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'PHONE-NUMBER',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: _email.text, password: _phonenumber.text)
                          .then(
                        (value) {
                          print('created new account');
                          Navigator.of(context).pushNamed('screen_13');
                        },
                      );
                    },
                    child: Text('REGISTER'),
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
  
}
