import 'package:flutter/material.dart';
import 'package:my_sample/utils/notification.dart';

class studentscreen extends StatefulWidget {
  const studentscreen(
      {Key? key, required this.Sname, required this.Sclass, required this.Smob})
      : super(key: key);

  final String Sname, Sclass, Smob;

  @override
  State<studentscreen> createState() => _studentscreenState();
}

class _studentscreenState extends State<studentscreen> {
  late FirebaseNotification firebase;
  handleAsync() async {
    String? token = await firebase.getToken();
    // ignore: avoid_print
    print("Firebase token : $token");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    firebase = FirebaseNotification();
    firebase.initialize();
    handleAsync();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Student List',
          textAlign: TextAlign.left,
        ),
        // centerTitle: true,
        backgroundColor: Color.fromARGB(181, 32, 126, 202),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network('https://i.postimg.cc/SsSbCnZ5/Untitled-1.png'),
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.Sname),
              Text(widget.Sclass),
              Text(widget.Smob),
              ElevatedButton(
                  onPressed: () {
                    firebase.subscribeToTopic('notify');
                  },
                  child: Text('notify parents'))
            ],
          ),
        ),
      ),
    );
  }
}
