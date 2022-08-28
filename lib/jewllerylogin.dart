import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_sample/jewellery.dart';
import 'package:my_sample/screen8.dart';
import 'package:my_sample/widgets/bottomnavbar.dart';

class screenlogin1 extends StatefulWidget {
  screenlogin1({Key? key}) : super(key: key);

  @override
  State<screenlogin1> createState() => _screenlogin1State();
}

class _screenlogin1State extends State<screenlogin1> {
  //controller initialisation
  final _usernamecontroller = TextEditingController();

  final _passwordcontroller = TextEditingController();

  //controller

  bool isDataMatached = true;

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text( 
          'ASSOSIATES',
          // style: TextStyle(fontFamily: 'robomonto'),
          textAlign: TextAlign.left,
          ),
        // centerTitle: ,
        backgroundColor: Color.fromARGB(181, 32, 126, 202),
        leading: Padding(padding: const EdgeInsets.all(8.0),
        child: Image.network('https://i.postimg.cc/SsSbCnZ5/Untitled-1.png'),
        
        
        ),
        
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Form(
            key: _formkey,
            child: Container(
              decoration: const BoxDecoration(
            
             image:  DecorationImage(
              image: NetworkImage('https://i.postimg.cc/3J0PFbNM/bg9.jpg'),
              fit: BoxFit.fitWidth,
              
              ),
          
          ),
              child: Column(
                children: [
                  TextFormField(
                    controller: _usernamecontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'UserName',
                    ),
                    validator: (value) {
                      // if (isDataMatached) {
                      //   return null;
                      // } else {
                      //   return 'error';
                      // }
                      if (value == null || value.isEmpty) {
                        return 'value is empty';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _passwordcontroller,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                    ),
                    validator: (value) {
                      // if (isDataMatached) {
                      //   return null;
                      // } else {
                      //   return 'error';
                      // }
                      if (value == null || value.isEmpty) {
                        return 'value is empty';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        checklogin(context);
                      } else {
                        print('data empty');
                      }
                      ;

                      // checklogin(context);
                    },
                    icon: Icon(Icons.check),
                    label: const Text('login'),
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

//function for username and password check
  void checklogin(BuildContext ctx) {
    final _username = _usernamecontroller.text;
    final _password = _passwordcontroller.text;

    //condition checking
    if (_username == _password) {
      print('uesrname and paswword matches correctly');

      Navigator.of(ctx).pushReplacement(
          MaterialPageRoute(builder: ((ctx) => screenfive())));

      //go to homepage
    } else {
      print('username and password doesnot match');
    }
  }
}
