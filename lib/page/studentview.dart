import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_sample/page/studentscreen.dart';

class studentview extends StatefulWidget {
  const studentview({Key? key}) : super(key: key);

  @override
  State<studentview> createState() => _studentviewState();
}

class _studentviewState extends State<studentview> {
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
      body: Container(
        margin: EdgeInsets.all(10),
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('students').snapshots(),
          builder: (context, studentSnapshot) {
            if (studentSnapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              final studentDocs = studentSnapshot.data!.docs;
              return ListView.builder(
                  itemCount: studentDocs.length,
                  itemBuilder: (context, index) {
                    return  Card(

                      child:  ListTile(

                        onTap: (() {
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => studentscreen(
                            Sname: studentDocs[index]['name'],
                            Sclass:studentDocs[index]['class'] ,
                            Smob:studentDocs[index]['mobile'] ,
                          ))));
                        }),

                        title: Text(studentDocs[index]['name']),
                        subtitle: Text(studentDocs[index]['class']),
                        
                       




                      )


                    );
                    
                  });
            }
          },
        ),
      ),
    );
  }
}
