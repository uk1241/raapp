import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_sample/utils/student_db.dart';
import 'package:my_sample/widgets/bottomnavbar.dart';

Future main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  (myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: studentsignup(),
    );
  }
}

// List<String> recepients = ["8089234063"];

class studentsignup extends StatelessWidget {
  studentsignup({Key? key}) : super(key: key);

  final TextEditingController _studentnamecontroller = TextEditingController();
  final TextEditingController _classcontroller = TextEditingController();
  final TextEditingController _mobnumbercontroller = TextEditingController();

  // @override
  // Void? dispose(){
  //   _studentname.dispose();
  //   _class.dispose();
  //   _mobnumber.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Student Registration',
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
              image: NetworkImage('https://i.postimg.cc/2j2z6Xv7/9.jpg'),
              fit: BoxFit.cover,
            ),
            color: Colors.white30,
            // border: Border.all(color: Colors.black, width: 5),
          ),
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _studentnamecontroller,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.account_circle,
                        size: 20,
                      ),
                      border: OutlineInputBorder(),
                      hintText: 'Student Name',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _classcontroller,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.class_rounded,
                        size: 20,
                      ),
                      border: OutlineInputBorder(),
                      hintText: 'Standard',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _mobnumbercontroller,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone_android,
                        size: 20,
                      ),
                      border: OutlineInputBorder(),
                      hintText: 'Guardian number',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                       create('students',
                          'docname',
                          _studentnamecontroller,
                          _classcontroller,
                          _mobnumbercontroller);
                    },
                    child: Text('      Register      '),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // _create();

                      Navigator.of(context).pushNamed('screen_18');
                    },
                    child: Text('View Students'),
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

// Future _create() async {
//   final usercollection = FirebaseFirestore.instance.collection("students");

//   final docRef = usercollection.doc('student_id');

//   await docRef.set({
//     "studentname" : name
//   });

